use anyhow::Ok;
use std::{collections::{HashMap, HashSet}, fs};
use wasmparser::{Dylink0SectionReader, Dylink0Subsection, Encoding, MemInfo, Parser, Payload::*};
use wasmtime::*;
use wasmtime_wasi::*;

const WASM_PAGE_SIZE: u32 = 64 * 1024;
const STACK_PAGE_NUM: u32 = 2;
const HEAP_PAGE_NUM: u32 = 8;

// This struct is used to 'load' dynamic wasm module into wasm memory.
// Currently it only allows one module to be loaded beside the libc.so
// and will automatically runs the '_start' function after the load
// process.
pub struct DynamicLoader {
    engine: Engine,
    linker: Linker<WasiCtx>,
    store: Store<WasiCtx>,
    // Memory which is shared by all dynamic wasm module
    memory: Memory,
    pub(crate) __indirect_function_table: Table,
    pub(crate) __stack_pointer: Global,

    libc_mem_start: u32,
    libc_table_start: u32,
    libc_mem_info: MemInfo,

    main_mem_start: u32,
    main_table_start: u32,
    main_mem_info: MemInfo,

    libc_module: Module,
    main_module: Module,
    instance: HashMap<String, Instance>,
}

impl DynamicLoader {
    // Input dynamic wasm modules' location to get information needed when loading dynamic modules.
    pub fn new(libc_path: &str, main_path: &str) -> DynamicLoader {
        let engine = Engine::default();
        let mut linker = Linker::new(&engine);
        linker.allow_shadowing(true);

        let wasi = WasiCtxBuilder::new()
            .inherit_stdio()
            .inherit_args()
            .expect("msg")
            .build();
        wasmtime_wasi::sync::add_to_linker(&mut linker, |s: &mut WasiCtx| s)
            .expect("Wasi failure!");
        let mut store = Store::new(&engine, wasi);

        let libc_content = fs::read(libc_path).expect("Libc path doesn't exist!");
        let main_content = fs::read(main_path).expect("Main path doesn't exist!");

        // Then we have to read information from dylink.0 to know how many memory we need
        let libc_mem_info = DynamicLoader::get_dylink0_info(&libc_content).unwrap();
        let main_mem_info = DynamicLoader::get_dylink0_info(&main_content).unwrap();

        let libc_mem_start = round_up_align(
            STACK_PAGE_NUM * WASM_PAGE_SIZE,
            libc_mem_info.memory_alignment,
        );
        let main_mem_start = round_up_align(
            libc_mem_start + libc_mem_info.memory_size,
            main_mem_info.memory_alignment,
        );

        let libc_table_start = round_up_align(0, libc_mem_info.memory_alignment);
        let main_table_start = round_up_align(
            libc_table_start + libc_mem_info.table_size,
            main_mem_info.table_alignment,
        );

        // Define memory
        let mem_size = DynamicLoader::mem_page_num(main_mem_start + main_mem_info.memory_size);
        let memory_ty = MemoryType::new(mem_size, None);
        let memory = Memory::new(&mut store, memory_ty).expect("Memory error");
        linker
            .define(&store, "env", "memory", memory)
            .expect("Memory create failed!");

        // Define table
        let table_ty = TableType::new(ValType::FuncRef, libc_mem_info.table_size, None);
        let table = Table::new(&mut store, table_ty, Val::FuncRef(None)).expect("Table error");
        linker
            .define(&store, "env", "__indirect_function_table", table)
            .expect("Table create failed!");

        // Define stack_pointer
        let stack_pointer_ty = GlobalType::new(ValType::I32, Mutability::Var);
        let stack_pointer_global = Global::new(
            &mut store,
            stack_pointer_ty,
            Val::I32((STACK_PAGE_NUM * WASM_PAGE_SIZE) as i32),
        )
        .expect("Global stack_pointer create error");
        linker
            .define(&store, "env", "__stack_pointer", stack_pointer_global)
            .expect("Global stack_pointer define failed");

        //Define __heap_base
        let mutable_t2 = GlobalType::new(ValType::I32, Mutability::Var);
        let __heap_base = Global::new(
            &mut store,
            mutable_t2,
            Val::I32(((mem_size - HEAP_PAGE_NUM) * WASM_PAGE_SIZE) as i32),
        )
        .expect("Global error");
        linker
            .define(&store, "GOT.mem", "__heap_base", __heap_base)
            .expect("Global __heap_base define failed");

        //Define __heap_end
        let mutable_t3 = GlobalType::new(ValType::I32, Mutability::Var);
        let __heap_end =
            Global::new(&mut store, mutable_t3, Val::I32((mem_size* WASM_PAGE_SIZE) as i32)).expect("Global error");
        linker
            .define(&store, "GOT.mem", "__heap_end", __heap_end)
            .expect("Global __heap_end define failed");

        let module_libc = Module::from_binary(&engine, &libc_content).expect("Compile Failed!");
        let module_main = Module::from_binary(&engine, &main_content).expect("Compile Failed!");

        DynamicLoader {
            engine: engine,
            linker: linker,
            store: store,
            memory: memory,
            __indirect_function_table: table,
            __stack_pointer: stack_pointer_global,
            libc_mem_start: libc_mem_start,
            libc_table_start: libc_table_start,
            libc_mem_info: libc_mem_info,
            main_mem_start: main_mem_start,
            main_table_start: main_table_start,
            main_mem_info: main_mem_info,
            libc_module: module_libc,
            main_module: module_main,
            instance: HashMap::new(),
        }
    }

    // Input binary data to get memory info of the module's dylink.0 section.
    fn get_dylink0_info(data: &[u8]) -> Option<MemInfo> {
        let cur = Parser::new(0);
        let mut result = Option::None;
        //We expect that dylink.0 to be the second chunk to be parsed.
        for payload in cur.parse_all(data) {
            match payload.expect("Parse failed!") {
                Version { num, encoding, .. } => match encoding {
                    Encoding::Module => {
                        continue;
                    }
                    Encoding::Component => {
                        panic!("Unexpected WebAssembly component version {}", num)
                    }
                },
                CustomSection(custom_reader) => {
                    if custom_reader.name().eq("dylink.0") {
                        let dylink_reader = Dylink0SectionReader::new(custom_reader.data(), 0);
                        if let Dylink0Subsection::MemInfo(info) = dylink_reader
                            .into_iter()
                            .next()
                            .unwrap()
                            .expect("Extract dylink.0 subsection failed")
                        {
                            result = Option::Some(info);
                        } else {
                            panic!("Extract dylink.0 subsection failed")
                        }
                    } else {
                        panic!("The first chunk is not dylink.0")
                    }
                }
                _else => {
                    // This part will never be reached
                    break;
                }
            }
        }
        result
    }

    // Load and relocate libc
    fn load(&mut self, name: &str) -> Result<()> {
        // In dynamic wasm modules weak symbols can be export and import at the same time
        // (https://github.com/dicej/component-linking-demo/issues/5).So we have to add these 
        // value to the linker and relocate after instantiation.
        let mut relocation_set:HashSet<&str> = HashSet::new();

        let instance = if name == "libc" {
            //__memory_base
            let memory_base_ty = GlobalType::new(ValType::I32, Mutability::Const);
            let memory_base_global = Global::new(
                &mut self.store,
                memory_base_ty,
                Val::I32(self.libc_mem_start as i32),
            )
            .expect("Global memory_base create error");
            self.linker
                .define(&mut self.store, "env", "__memory_base", memory_base_global)
                .expect("Global memory_base define error");

            //__table_base
            let table_base_ty = GlobalType::new(ValType::I32, Mutability::Const);
            let table_base_global = Global::new(
                &mut self.store,
                table_base_ty,
                Val::I32(self.libc_table_start as i32),
            )
            .expect("Global table_base create error");
            self.linker
                .define(&mut self.store, "env", "__table_base", table_base_global)
                .expect("Global table_base define error");

            let instance = self
                .linker
                .instantiate(&mut self.store, &self.libc_module)
                .expect("Instantiate failed");
            self.instance.insert(name.to_string(), instance);

            instance
        } else {

            let mut import_set:HashSet<&str> = HashSet::new();
            for import in self.main_module.imports(){
                if import.module() == "GOT.mem"{
                    import_set.insert(import.name());
                }
            }
            // Only 
            for export in self.main_module.exports(){
                if import_set.contains(export.name()){
                    match export.ty(){
                        ExternType::Global(_) => {
                            relocation_set.insert(export.name());
                            let ty = GlobalType::new(ValType::I32, Mutability::Var);
                            let global_new = Global::new(
                                &mut self.store,
                                ty,
                                Val::I32(0),
                            )
                            .expect("Global error");
                            self.linker
                                .define(&mut self.store, "GOT.mem", export.name(), global_new)?;
                        }
                        _else => {break;}
                    }
                }
            }

            //__memory_base
            let memory_base_ty = GlobalType::new(ValType::I32, Mutability::Const);
            let memory_base_global = Global::new(
                &mut self.store,
                memory_base_ty,
                Val::I32(self.main_mem_start as i32),
            )
            .expect("Global memory_base create error");
            self.linker
                .define(&mut self.store, "env", "__memory_base", memory_base_global)
                .expect("Global memory_base define error");

            //__table_base
            let table_base_ty = GlobalType::new(ValType::I32, Mutability::Const);
            let table_base_global = Global::new(
                &mut self.store,
                table_base_ty,
                Val::I32(self.main_table_start as i32),
            )
            .expect("Global table_base create error");
            self.linker
                .define(&mut self.store, "env", "__table_base", table_base_global)
                .expect("Global table_base define error");

            let instance = self
                .linker
                .instantiate(&mut self.store, &self.main_module)
                .expect("Instantiate failed");
            self.instance.insert(name.to_string(), instance);

            instance
        };

        // Next we have to relocate the global data
        // https://github.com/WebAssembly/tool-conventions/blob/main/DynamicLinking.md#relocations
        let reloc = instance
            .get_func(&mut self.store, "__wasm_apply_data_relocs")
            .unwrap();
        reloc
            .call(&mut self.store, &Vec::new(), &mut Vec::new())
            .expect("func __wasm_apply_data_relocs calls failed");

        self.linker.instance(&mut self.store, "env", instance)?;
        
        for name in relocation_set.into_iter(){
            let extern_1 = instance.get_export(&mut self.store, name).unwrap();
            let value = match extern_1{
                Extern::Global(global_a) => {
                    global_a.get(&mut self.store)
                },
                _else => {
                    panic!("Should not go into here!");
                }
            };
            let extern_2 = self.linker.get(&mut self.store, "GOT.mem", name).unwrap();
            match extern_2{
                Extern::Global(global_a) => {
                    global_a.set(&mut self.store, Val::I32(value.i32().unwrap()+self.main_mem_start as i32))?;
                },
                _else => {
                    panic!("Name {} duplicate!",name);
                }
            }
        }
        
        if name == "libc" {
            // At last we must relocate the exported global
            // https://github.com/WebAssembly/tool-conventions/blob/main/DynamicLinking.md#exports
            self.relocate(name)?;

            // And we need to call _initialize after calling __wasm_apply_data_relocs in libc.
            let initialize = instance
                .get_func(&mut self.store, "_initialize")
                .unwrap();
            initialize
                .call(&mut self.store, &Vec::new(), &mut Vec::new())
                .expect("func _initialize calls failed");

            // Remember that we have to grow the indirect function table after we instantiate libc
            self.__indirect_function_table.grow(
                self.store.as_context_mut(),
                self.main_mem_info.table_size,
                Val::FuncRef(None),
            )?;
        }
        Ok(())
    }

    // Relocate the global that the instance exported
    fn relocate(&mut self, name: &str) -> Result<()> {
        let mut module: &Module = &self.libc_module;
        if name != "libc" {
            module = &self.main_module;
        }
        let mut iter = module.exports();
        while let Some(export) = iter.next() {
            match export.ty() {
                ExternType::Global(globaltype) => {
                    // We only need to relocate global which has i32 valtype.
                    match globaltype.content() {
                        ValType::I32 => {
                            let instance = self.instance.get(name).unwrap();
                            let instance_export = instance
                                .get_export(self.store.as_context_mut(), export.name())
                                .unwrap();
                            let global = instance_export.into_global().unwrap();
                            let value = global.get(&mut self.store);
                            let content = match value {
                                Val::I32(content) => content,
                                _else => {
                                    panic!("Relocate failed")
                                }
                            };
                            let ty = GlobalType::new(ValType::I32, Mutability::Var);
                            // Because the exported value is immutable so we can only redefine it in the linker
                            let global_new = Global::new(
                                &mut self.store,
                                ty,
                                Val::I32(content + (self.libc_mem_start as i32)),
                            )
                            .expect("Global error");
                            self.linker
                                .define(&mut self.store, "GOT.mem", export.name(), global_new)?;
                        }
                        _else => {}
                    }
                }
                _else => {
                    continue;
                }
            }
        }
        Ok(())
    }

    // Load this two modules and run
    pub fn start(&mut self) -> Result<()> {
        self.load("libc")?;
        //println!("{:?}", self.main_table_start);
        self.load("main")?;
        let instance = self.instance.get("main").unwrap();
        let main = instance.get_func(&mut self.store, "_start").unwrap();
        let mut return_array: Vec<wasmtime::Val> = Vec::new();
        main.call(&mut self.store, &Vec::new(), &mut return_array)
            .expect("func failed");
        Ok(())
    }

    // Helper method to calculate memory page number needed by wasm modules
    #[inline]
    fn mem_page_num(mem_end: u32) -> u32 {
        let heap_page_num = HEAP_PAGE_NUM;
        heap_page_num + total_size(mem_end)
    }
}

#[inline]
// Helper method used to calculate align
fn round_up_align(num: u32, align: u32) -> u32 {
    if align == 0 || num % align == 0 {
        return num;
    }
    return num + align - num % align;
}

#[inline]
// Helper method used to calculate whole wasm memory page
fn total_size(mem_size: u32) -> u32 {
    if mem_size % WASM_PAGE_SIZE != 0 {
        mem_size / WASM_PAGE_SIZE + 1
    } else {
        mem_size / WASM_PAGE_SIZE
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test() {
        let mut dynamic_linker = DynamicLoader::new("build/libc.so", "build/aead_aegis128l.wasm");
        dynamic_linker.start().expect("run failed");
        
    }
}

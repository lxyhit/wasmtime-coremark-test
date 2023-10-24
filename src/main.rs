use anyhow::Result;
use wasmtime::*;
use wasmtime_wasi::*;
fn main() -> Result<()> {
    //编译两个模块
    println!("Compiling module...");
    
    //engine : global context for compilation and management of wasm modules.
    let engine = Engine::default();
    let mut linker  = Linker::new(&engine);
    linker.allow_shadowing(true);

    let  wasi = WasiCtxBuilder::new()
        .inherit_stdio()
        .inherit_args().expect("msg")
        .build();
    wasmtime_wasi::sync::add_to_linker(& mut linker,|s|s)?;

    let module_libc = Module::from_file(&engine, "build/libc.so").expect("Compile Failed!");
    let module_coremark = Module::from_file(&engine, "build/coremark.wasm").expect("Compile Failed!");
    //let module_main = Module::from_file(&engine, "build/main.wasm").expect("Compile Failed!");    
    println!("Done!");
    let mut store = Store::new(&engine, wasi);

    //实例化libso,准备libc.so需要用的import
    //memory
    let memory_ty_libc = MemoryType::new(10, None);
    let memory = Memory::new(&mut store, memory_ty_libc).expect("Memory error");
    linker.define(&store, "env", "memory", memory)?;
    //__indirect_function_table
    let ty = TableType::new(ValType::FuncRef, 38,None);
    let table = Table::new(&mut store, ty, Val::FuncRef(None)).expect("Table error");
    linker.define(&store, "env", "__indirect_function_table", table)?;
    //__stack_pointer
    let mutable_t = GlobalType::new(ValType::I32, Mutability::Var);
    let stack_pointer = Global::new(&mut store, mutable_t, Val::I32(64 * 1024)).expect("Global error");
    linker.define(&store, "env", "__stack_pointer", stack_pointer)?;
    //__memory_base
    let const_t = GlobalType::new(ValType::I32, Mutability::Const);
    let __memory_base = Global::new(&mut store, const_t, Val::I32(64 * 1024)).expect("Global error");
    linker.define(&store, "env", "__memory_base", __memory_base)?;
    //__table_base
    let const_t1 = GlobalType::new(ValType::I32, Mutability::Const);
    let __table_base = Global::new(&mut store, const_t1, Val::I32(0)).expect("Global error");
    linker.define(&store, "env", "__table_base", __table_base)?;
    //__heap_base
    let mutable_t2 = GlobalType::new(ValType::I32, Mutability::Var);
    let __heap_base = Global::new(&mut store, mutable_t2, Val::I32(6*64*1024)).expect("Global error");
    linker.define(&store, "GOT.mem", "__heap_base", __heap_base)?;
    //__heap_end
    let mutable_t3 = GlobalType::new(ValType::I32, Mutability::Var);
    let __heap_end = Global::new(&mut store, mutable_t3, Val::I32(7*64*1024)).expect("Global error");
    linker.define(&store, "GOT.mem", "__heap_end", __heap_end)?;
    
    let main = linker.instantiate(&mut store, &module_libc)?;
    linker.instance(&mut store, "env", main)?;

    /*
    检测libc.so的函数可否导出
    let main = linker.instantiate(&mut store, &module_libc)?;
    let input:f32 = -1.0;
    let result = main.get_typed_func::<f32, f32>(&mut store, &"fabsf").unwrap();
    println!("fabsf -1.0 result: {}",result.call(&mut store,input)?);
    let result = main.get_typed_func::<f32, f32>(&mut store, &"clock_gettime").unwrap();
     */
    
    //__memory_base
    let const_t = GlobalType::new(ValType::I32, Mutability::Const);
    let __memory_base = Global::new(&mut store, const_t, Val::I32(64 * 1024 +  209976)).expect("Global error");
    linker.define(&store, "env", "__memory_base", __memory_base)?;
    //__table_base
    let const_t1 = GlobalType::new(ValType::I32, Mutability::Const);
    let __table_base = Global::new(&mut store, const_t1, Val::I32(38)).expect("Global error");
    linker.define(&store, "env", "__table_base", __table_base)?;
    //_CLOCK_REALTIME
    let mutable_t2 = GlobalType::new(ValType::I32, Mutability::Var);
    let __heap_base = Global::new(&mut store, mutable_t2, Val::I32(64*1024+1336)).expect("Global error");
    linker.define(&store, "GOT.mem", "_CLOCK_REALTIME", __heap_base)?;
    //default_num_contexts
    let mutable_t3 = GlobalType::new(ValType::I32, Mutability::Var);
    let __heap_end = Global::new(&mut store, mutable_t3, Val::I32(64*1024+209976+1456)).expect("Global error");
    linker.define(&store, "GOT.mem", "default_num_contexts", __heap_end)?;
    
    let coremark = linker.instantiate(&mut store, &module_coremark)?;
    let reloc = coremark.get_func(&mut store, "__wasm_apply_data_relocs").unwrap();
    reloc.call(&mut store, &Vec::new(),&mut Vec::new()).expect("func failed");
    let main = coremark.get_func(&mut store, "__main_void").unwrap();
    let return_val = wasmtime::Val::I32(0);
    let mut return_array:Vec<wasmtime::Val> = Vec::new();
    return_array.push(return_val); 
    main.call(&mut store, &Vec::new(),&mut return_array).expect("func failed");
    Ok(())

}

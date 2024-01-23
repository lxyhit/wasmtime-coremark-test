# 测试动态模块
用wasmtime加载动态模块coremark.wasm以及libc.wasm进行简单测试
# 测试方法
```shell
cargo run --bin dynamic_wasm_runner build/libc.so build/coremark.wasm
use clap::Parser;
use dynamic_wasm_loader::DynamicLoader;

#[derive(Parser)]

#[command(version = "1.0")]
#[command(name = "dynamic_wasm_runner")]
#[command(about = "A runner for executing WebAssembly dynamic libraries.", long_about = None)]
struct Cli {
    /// libc location
    location1: String,

    /// main location
    location2: String,
}

fn main() {
    let cli = Cli::parse();
    let libc_path = &cli.location1;
    let main_path = &cli.location2;
    let mut loader = DynamicLoader::new(libc_path, main_path);
    loader.start().expect("run failed");
}



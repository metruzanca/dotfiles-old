// use std::fs;

extern crate dotenv;

use std::env;
use dotenv::dotenv;

fn main() -> std::io::Result<()> {
    dotenv().ok();
    // let args: Vec<String> = env::args().collect();

    // let username = &args[1];
    // fs::copy("../dot/.config/Hyper/.hyper.js", format!("/mnt/c/Users/{}/AppData/Roaming/Hyper/.hyper.js", username))?;  
    // println!("/mnt/c/Users/{}/AppData/Roaming/Hyper/.hyper.js", username);
    for (key, value) in env::vars() {
        println!("{}: {}", key, value);
    }
    // Ok(())
}

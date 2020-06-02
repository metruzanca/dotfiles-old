use std::fs;

fn main() -> std::io::Result<()> {
    fs::copy("../dot/.config/Hyper/.hyper.js", "/mnt/c/Users/Metruzanca/AppData/Roaming/Hyper/.hyper.js")?;  // Copy foo.txt to bar.txt
    Ok(())
}

First run `make` to build the universal static library, then run `cargo build` to build the Rust binary that links against it.

This project compiles aarch64-apple-darwin and x86_64-apple-darwin object files, produces a static library of each, then uses lipo to create a universal static library for them. The cargo project links against this library.

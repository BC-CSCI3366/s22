# You need to have wat2wasm and wasm-interp from wabt tools package.
wat2wasm $1 -o out.wasm; wasm-interp out.wasm --run-all-exports

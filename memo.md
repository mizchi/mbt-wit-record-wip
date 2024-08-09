# Run

## Source

wit/world.wit

```wit
package local:demo;

world my-world {
  import host: interface {
    log: func(param: string);
  }

  export run: func();
}
```

## Build

```bash
# gen ./target
$ moon build --target wasm -g
Finished. moon: ran 4 tasks, now up to date

# embed wit
$ wasm-tools component embed wit target/wasm/debug/build/gen/gen.wasm -o target/wasm/debug/build/gen/gen.wasm --encoding utf16 -g
$ wasm-tools component new target/wasm/debug/build/gen/gen.wasm -o target/wasm/debug/build/gen/gen.wasm -g

# gen ./out
$ npx @bytecodealliance/jco transpile target/wasm/debug/build/gen/gen.wasm -o out

# run ./out/
$ deno eval 'import { run } from "./out/gen.js"; run();'
```
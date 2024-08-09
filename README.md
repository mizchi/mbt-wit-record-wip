# moonbit wit+jco playground (does not works yet)

```bash
$ cargo install wit-bindgen-cli --git https://github.com/peter-jerry-ye/wit-bindgen/ --branch moonbit

$ make regenerate
```

Put worlds/app/top.mbt

```rust
pub fn add(a : Point, b : Point) -> Point {
  Point::{ x: a.x + b.x, y: a.y + b.y }
}
```

```bash
$ make build
$ make run
```

Error

```
Transpiled JS Component Files:

 - out/gen.core.wasm  6.56 KiB
 - out/gen.d.ts        0.1 KiB
 - out/gen.js          1.1 KiB

error: Uncaught (in promise) RuntimeError: unreachable
    at moonbit.free ($PROJ/out/gen.core.wasm:1:1531)
    at moonbit.gc.free ($PROJ/out/gen.core.wasm:1:1694)
    at moonbit.decref ($PROJ/out/gen.core.wasm:1:1601)
    at $local/demo/worlds/app.add.fn/9 ($PROJ/out/gen.core.wasm:1:2192)
    at $local/demo/gen.wasmExportAdd.fn/10 ($PROJ/out/gen.core.wasm:1:2355)
    at add ($PROJ/out/gen.js:26:24)
    at $PROJ/$deno$eval:1:48
    at eventLoopTick (ext:core/01_core.js:168:7)
make: *** [run] Error 1
```

## MIT License

Copyright 2024 @mizchi<miz404@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
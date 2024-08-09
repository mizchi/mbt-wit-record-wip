.DEFAULT_GOAL = build

run-app:
	@deno eval 'import { add } from "./out/gen.js";console.log(add({ x: 1, y: 2 }, { x: 3, y: 4 }));'

build:
	@moon build --target wasm -g
	@wasm-tools component embed wit target/wasm/debug/build/gen/gen.wasm -o target/wasm/debug/build/gen/gen.wasm --encoding utf16 -g
	@wasm-tools component new target/wasm/debug/build/gen/gen.wasm -o target/wasm/debug/build/gen/gen.wasm -g
	@npx @bytecodealliance/jco transpile target/wasm/debug/build/gen/gen.wasm -o out

regenerate:
# test worlds/app/top.mbt exists, then backup it
	@test -f worlds/app/top.mbt && cp worlds/app/top.mbt worlds/app/top.mbt.bak || true
	@wit-bindgen moonbit --out-dir . wit --derive-show --derive-eq
	@moon fmt
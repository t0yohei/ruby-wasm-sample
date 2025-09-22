console.log("Hello World");

async function initVM() {
  const response = await fetch("./my-ruby-app.wasm");
  const ruby_module = await WebAssembly.compileStreaming(response);
  console.log(ruby_module);
}

initVM();

// WebAssembly.instantiateStreaming(fetch("my-ruby-app.wasm"), importObject).then(
//   (results) => {
//     // Do something with the results!
//   }
// );

// fetch("my-ruby-app.wasm")
//   .then((response) => response.arrayBuffer())
//   .then((bytes) => WebAssembly.instantiate(bytes, importObject))
//   .then((results) => {
//     // コンパイルされた結果 (results) で何かする!
//   });

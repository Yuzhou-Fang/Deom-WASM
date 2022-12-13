const importObject = {
    console: {
        log(arg) {
            console.log(arg);
        },
    },
};

WebAssembly.instantiateStreaming(fetch("add.wasm"), importObject).then(
    (obj) => {
        result = obj.instance.exports.add(30, 40);
        console.log("Result from return value: " + result);
    }
);
var hogan = require("hogan.js");
var process = require("process");

var file = process.argv[2];

var data = eval(file.json);

var compiled = hogan.compile(template);

console.log(hogan.render(compiled));


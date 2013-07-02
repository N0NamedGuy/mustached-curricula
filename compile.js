var Handlebars = require("handlebars");


// Check for filename
if (process.argv.length < 3) {
    console.log("Usage: node " + process.argv[1] + " Filename");
    process.exit(1);
}

var fs = require("fs"),
    template = process.argv[2];

fs.readFile(template + ".mustache", 'utf8', function (err, data) {
    if (err) throw err;

    var compiled = Handlebars.compile(data);

    fs.readFile(template + ".yaml", 'utf8', function (err, data) {
        if (err) throw err;

        var input = require("js-yaml").load(data);

        console.log(compiled(input));
    });

});



var interval = 1000;
var outfile = '/tmp/tsdump.log';

var fs = require('fs');
 
function intervalFunc() {
    const dateTime = Date.now();
    const timestamp = Math.floor(dateTime / 1000);
    fs.writeFile(outfile, timestamp, function (err) {
    if (err)
        console.log(err);
    else
        console.log('Write operation complete.');
    });
}
setInterval (intervalFunc, interval);


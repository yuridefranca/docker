const { createServer } = require('node:http');

createServer((req, res) => {
    res.end('Hello World!');
}).listen(3000, () => {
    console.log('Server running at http://localhost:3000');
});
const express = require('express');
const path = require('path');

const app = express();
app.use(express.static('./render/dist/render'));

app.get('/*', function(req, res) {
    res.sendFile(path.join(__dirname + '/render/dist/render/index.html'));
});

app.listen(4200, function() {
    console.log('Server running');
});
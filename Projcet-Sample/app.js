const express = require('express');
const app = express();
const indexRouter = require('./routes/index');

app.set('view engine', 'pug');
app.use('/public', express.static('public'));
app.use('/', indexRouter);

app.listen(3000, () => {
    console.log('Server running on http://localhost:3000/');
});

const express = require('express');
const bodyParser = require('body-parser');
const expressLayouts = require('express-ejs-layouts');
const app = express();
const port = process.env.PORT || 5000;

app.set('view engine', 'ejs');
app.use(expressLayouts);
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(express.static(__dirname + '/public'));


app.get('/', (req, res) => {
    res.render('pages/home', {active1:'active', active2:'', active3:'', active4:''});
});

app.get('/history', (req, res) => {
    res.render('pages/history', {active1:'', active2:'active', active3:'', active4:''});
});


app.listen(port, () => {
    console.log(`Run in  http://localhost:${port}`);
})
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
    res.render('pages/home', { active1: 'active', active2: '', active3: '', active4: '', active5: '', active6: '' });
});

app.get('/history', (req, res) => {
    res.render('pages/history', { active1: '', active2: 'active', active3: '', active4: '',  active5: '', active6: '' });
});

app.get('/Musics', (req, res) => {
    res.render('pages/success', { active1: '', active2: '', active3: 'active', active4: '',  active5: '', active6: '' });
});

app.get('/computation', (req, res) => {
    res.render('pages/computation', { active1: '', active2:'', active3: '', active4: 'active',  active5: '', active6: '' });
});

app.get('/about', (req, res) => {
    res.render('pages/about', { active1: '', active2:'', active3: '', active4: '',  active5: 'active', active6: '' });
});

app.get('/contact', (req, res) => {
    res.render('pages/contact', { active1: '', active2:'', active3: '', active4: '',  active5: '', active6: 'active' });
});

app.get('/insert', (req, res) => {
    res.render('pages/insert', { active1: '', active2: '', active3: '', active4: '',  active5: '', active6: '' });
});
app.post('/insert', (req, res) => {
    let musics = req.body.musics.split(';');
    let arr = [];
    for (const music of musics) {
        if (music.trim()) {
            arr.push('INSERT INTO dbmusics.tbmusic (fYear, fName) VALUES ('+parseInt(req.body.year)+', "'+music.trim()+'")');
        }
    }
    
    res.send(arr.join(';'));
    
});


app.listen(port, () => {
    console.log(`Run in  http://localhost:${port}`);
});
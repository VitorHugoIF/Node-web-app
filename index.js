const express = require('express');
const bodyParser = require('body-parser');
const expressLayouts = require('express-ejs-layouts');
const app = express();
const port = process.env.PORT || 5000;
const Music = require('./model/Music');


app.set('view engine', 'ejs');
app.use(expressLayouts);
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(express.static(__dirname + '/public'));


app.get('/', (req, res) => {
    let desc = 'Computação na arte. Essa fusão se faz valer positivamente em vários meios, em especial na educação. Os diálogos estabelecidos pela arte e a tecnologia faz nascer novas tendências de interatividade humana, de abordagem e afeto de si com o outro e, junto com elas, as chamadas tecnologias educacionais: de ensino e de aprendizagem. Novas formas de educar."';
    let key = 'Computação, Arte, Tecnologia, Educação, Ensino, Aprendizagem, Interatividade, Tendência, historia, napster, youtube';
    let title = 'Computação na arte da música';
    res.render('pages/home', { title:title, desc:desc, key:key, active1: 'active', active2: '', active3: '', active4: '', active5: '', active6: '' });
});

app.get('/history', (req, res) => {
    let desc = 'A tecnologia vem transformando absolutamente tudo ao nosso redor. A forma como nos comunicamos, o jeito de consumir conteúdo, o compartilhamento de histórias diárias e, claro, a forma como conhecemos artistas e ouvimos músicas.';
    let key = 'Computação, Arte, Tecnologia, Historia, MTV, Gravadoras';
    let title = 'História';

    res.render('pages/history', { title:title, desc:desc, key:key, active1: '', active2: 'active', active3: '', active4: '', active5: '', active6: '' });
});

app.get('/musics', (req, res) => {
    let desc = 'Relação das músicas mais ouvidas nos últimos anos – de 1950 até 2000.';
    let key = 'Musicas, parada de sucesso, lista';
    let title = 'Paradas de sucesso';

    Music.Music.findAll({
        offset: 0, limit: 10,
    }).then((musics) => {
        res.render('pages/success', { title:title, desc:desc, key:key, musics: musics, active1: '', active2: '', active3: 'active', active4: '', active5: '', active6: '' });
    });
});

app.post('/musics', (req, res) => {
    const offset = parseInt(req.body.offset);
    req.params.offset = offset;
    Music.Music.findAll({
        offset: offset ? offset : 0, limit: 10,
    }).then((musics) => {
        res.send(musics);
    });
});

app.post('/musics/search', (req, res) => {
    const Op = Music.Sequelize.Op;

    if (req.body.year && req.body.name) {
        Music.Music.findAll({
            where: {
                [Op.and]: [{ fYear: req.body.year }, { fName: { [Op.substring]: req.body.name } }]
            }
        }).then((musics) => {
            res.send(musics);
        });

    } else if (req.body.year) {
        Music.Music.findAll({
            where: {
                fYear: req.body.year
            }
        }).then((musics) => {
            res.send(musics);
        });
    } else if (req.body.name) {
        Music.Music.findAll({
            where: {
                fName: { [Op.substring]: req.body.name }
            }
        }).then((musics) => {
            res.send(musics);
        });
    } else {
        Music.Music.findAll({
            offset: 0, limit: 10,
        }).then((musics) => {
            res.send(musics);
        });
    }

});

app.get('/musics/video/:myurl', (req, res) => {
    let desc = 'Video de musica top 10 das paradas de sucesso de sua decada';
    let key = 'Video, youtube';
    let title = "Video";
    if (req.params.myurl) {
        res.render('pages/video', { title:title, desc:desc, key:key, url: req.params.myurl, active1: '', active2: '', active3: '', active4: '', active5: '', active6: '' });
    } else {
        res.redirect('/musics');
    }


});

app.get('/computation', (req, res) => {
    let desc = 'Hoje em dia já é possível criar canções inteiras e até mesmo vozes artificiais com apenas o uso de um computador.';
    let key = 'Musica, tecnologia, cancoes, musica 8d, audio, digital';
    let title = "Computaçao e tecnologia";

    res.render('pages/computation', { title:title, desc:desc, key:key, active1: '', active2: '', active3: '', active4: 'active', active5: '', active6: '' });
});

app.get('/about', (req, res) => {
    let desc = 'Alunos autores do site';
    let key = 'weslei, vitor, carlos, alunos, autores';
    let title = "Sobre";

    res.render('pages/about', { title:title, desc:desc, key:key, active1: '', active2: '', active3: '', active4: '', active5: 'active', active6: '' });
});

app.get('/contact', (req, res) => {
    let desc = 'Entre em contato com a gente';
    let key = 'contato, formulario, mensagem';
    let title = "Entre em contato";

    res.render('pages/contact', { title:title, desc:desc, key:key, active1: '', active2: '', active3: '', active4: '', active5: '', active6: 'active' });
});

app.get('/insert', (req, res) => {
    res.render('pages/insert', { title:'', desc:'', key:'', active1: '', active2: '', active3: '', active4: '', active5: '', active6: '' });
});
app.post('/insert', (req, res) => {
    let musics = req.body.musics.split(';');
    let arr = [];
    for (const music of musics) {
        if (music.trim()) {
            arr.push('INSERT INTO dbmusics.tbmusic (fYear, fName) VALUES (' + parseInt(req.body.year) + ', "' + music.trim() + '")');
        }
    }

    res.send(arr.join(';'));

});


app.listen(port, () => {
    console.log(`Run in  http://localhost:${port}`);
});
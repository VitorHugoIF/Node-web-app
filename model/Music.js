const db = require('../database');

const Music = db.sequelize.define('tbmusics',{
    fMusicID:{
        type: db.Sequelize.INTEGER.UNSIGNED.ZEROFILL,
        primaryKey: true,
        autoIncrement: true 
    },
    fYear:{
        type: db.Sequelize.INTEGER
    },
    fName:{
        type: db.Sequelize.STRING
    },
    fUrl:{
        type: db.Sequelize.STRING
    }
});
// Music.sync({ force: true }); RODA A PRIMEIRA VEZ PARA CRIAR A TABELA
const sequelize = db.sequelize;
const Sequelize = db.Sequelize;
module.exports = {Music, Sequelize, sequelize};
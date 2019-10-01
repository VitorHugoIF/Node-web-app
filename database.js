const Sequelize = require('sequelize');
const sequelize = new Sequelize('dbmusics', 'root', '', {
    host: 'localhost',
    dialect: 'mysql'
});

sequelize.authenticate()
    .then(() => {
        console.log('Connected...');
    })
    .catch(() => {
        console.log('Error...');
    });

module.exports = {
    Sequelize: Sequelize,
    sequelize: sequelize
}
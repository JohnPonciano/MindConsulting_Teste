import mysql from 'mysql2';

export const db = mysql.createConnection({
  host: '127.0.0.1',
  port: 3306, 
  user: 'root',
  password: 'masteryoda',
  database: 'blog'
});


// Tentar estabelecer a conexão com o banco de dados
db.connect((err) => {
    if (err) {
        console.error('Erro ao conectar ao banco de dados:', err);
        return;
    }
    console.log('Conexão bem-sucedida ao banco de dados.');
});

// Lidar com erros de conexão
db.on('error', (err) => {
    if (err.code === 'PROTOCOL_CONNECTION_LOST') {
        console.error('A conexão com o banco de dados foi perdida.');
    } else if (err.code === 'ER_CON_COUNT_ERROR') {
        console.error('O banco de dados tem muitas conexões.');
    } else if (err.code === 'ECONNREFUSED') {
        console.error('A conexão com o banco de dados foi recusada.');
    } else {
        console.error('Erro no banco de dados:', err);
    }
});

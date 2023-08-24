#!/bin/bash
#remove container existente com o nome blog
echo 'removendo container antigo'
sudo docker rm -f blog
# Crie um contêiner MySQL
echo 'criando novo blog'
sudo docker run -d --name blog -e MYSQL_ROOT_PASSWORD=masteryoda -e MYSQL_DATABASE=blog -v $(pwd)/setup_database.sql:/docker-entrypoint-initdb.d/setup_database.sql -p 3306:3306 mysql:latest

#! /bin/ksh
clear

DATE=`date +%Y-%m-%d@%H:%M:%S`
USR=`whoami`

echo "${DATE} INFO  @ Usuario: $USR "

echo "${DATE} INFO  @ crear imagen por Dockerfile"


docker build -t reto_mysql .

echo "${DATE} INFO  @ mostrando imagenes"
docker images


echo "${DATE} INFO  @ crear contenedor docker"

docker run -d --name reto_mysql -p 33060:3306 -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=retotecnico -e MYSQL_USER=retouser -e MYSQL_PASSWORD=retopass reto_mysql


echo "${DATE} INFO  @ mostrando contenedor"
docker ps -a


echo "${DATE} INFO  @ fin ejecion"

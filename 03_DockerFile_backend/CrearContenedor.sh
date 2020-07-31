#! /bin/ksh
clear

DATE=`date +%Y-%m-%d@%H:%M:%S`
USR=`whoami`

echo "${DATE} INFO  @ Usuario: $USR "

echo "${DATE} INFO  @ crear imagen por Dockerfile"


docker build -t reto_microibm .

echo "${DATE} INFO  @ mostrando imagenes"
docker images


echo "${DATE} INFO  @ crear contenedor docker"

docker run --name microf1 -p 3081:3081 -d reto_microibm
docker run --name microf2 -p 3082:3081 -d reto_microibm


echo "${DATE} INFO  @ mostrando contenedor"
docker ps -a

echo "${DATE} INFO  @ fin ejecion"




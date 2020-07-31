#! /bin/ksh
clear


echo "crear tabla en contenedor"

docker exec -it reto_mysql mysql -uretouser -pretopass retotecnico -e "show databases;"
docker exec -it reto_mysql mysql -uretouser -pretopass retotecnico -e "create table traza_operacion(  operacion varchar(50),  numero1 integer,  numero2 integer,  resultado integer,  creacion timestamp DEFAULT NOW() );"

docker exec -it reto_mysql mysql -uretouser -pretopass retotecnico -e "show tables ;"

echo "fin"

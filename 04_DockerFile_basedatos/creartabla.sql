

use retotecnico;

create table traza_operacion(
    operacion varchar(50),
    numero1 integer,
    numero2 integer,
    resultado integer,
    creacion timestamp DEFAULT NOW()
);

--Vista
--select * from traza_operacion ;

--Insert
--insert into traza_operacion ( operacion , numero1, numero2, resultado ) values ( 'suma' , 10, 15 , 25  );

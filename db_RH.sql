CREATE DATABASE RH;
USE RH;
CREATE TABLE tab_trabalhadores
(

id_trabalhador int AUTO_INCREMENT NOT NULL,
nomeCompleto_trabalhador varchar(99) NOT NULL,
cargo_trabalhador varchar(55),
RG_trabalhador bigint NOT NULL,
status_trabalhador varchar(8),
email_trabalhador varchar(99),
salario_trabalhador decimal(8,2),
PRIMARY KEY(id_trabalhador,RG_trabalhador));

INSERT INTO tab_trabalhadores(nomeCompleto_trabalhador,cargo_trabalhador,RG_trabalhador,status_trabalhador,email_trabalhador,salario_trabalhador)VALUES("Joaquim Silva Brabosa","Gerente de TI",55222333,"ATIVO","joaquim@mail.com",11222.0);
INSERT INTO tab_trabalhadores(nomeCompleto_trabalhador, cargo_trabalhador,RG_trabalhador,status_trabalhador,email_trabalhador,salario_trabalhador)VALUES("Maria Silva Bela","Diretora de TI",999111222,"ATIVO","maria@mail.com",33333.0);
INSERT INTO tab_trabalhadores(nomeCompleto_trabalhador,cargo_trabalhador,RG_trabalhador,status_trabalhador,email_trabalhador,salario_trabalhador)VALUES("Manuela Vargas","Trainee de TI",999777333,"ATIVO","vargas@yahoo.com",1999.0);
INSERT INTO tab_trabalhadores(nomeCompleto_trabalhador, cargo_trabalhador,RG_trabalhador,status_trabalhador,email_trabalhador,salario_trabalhador)VALUES("Denilson Joaquim Alves","Recrutador de Recursos Humanos",222111999,"ATIVO","denilson@mail.com",8999.0);
INSERT INTO tab_trabalhadores(nomeCompleto_trabalhador, cargo_trabalhador, RG_trabalhador,status_trabalhador,email_trabalhador,salario_trabalhador)VALUES("Cabrito Tevez","Arquiteto de sistemas",333999111,"FÉRIAS","tevez@mail.com",9999.0);

select id_trabalhador,nomeCompleto_trabalhador,CONCAT('R$',FORMAT(salario_trabalhador,2,'pt-BR')) AS Salário FROM tab_trabalhadores WHERE salario_trabalhador>2000 ;

select id_trabalhador,nomeCompleto_trabalhador,CONCAT('R$',FORMAT(salario_trabalhador,2,'pt-BR')) AS Salário FROM tab_trabalhadores WHERE salario_trabalhador<2000.0;

UPDATE tab_trabalhadores SET salario_trabalhador=2999.0 WHERE id_trabalhador=3;


SELECT * FROM tab_trabalhadores;
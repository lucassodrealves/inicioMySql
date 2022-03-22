CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE Tab_farmacos(

id_farmacos int AUTO_INCREMENT NOT NULL,
nome_farmacos varchar(99) NOT NULL,
indicacao_farmacos varchar(199) ,
preco_farmacos decimal(8,2) NOT NULL,
id_categorias int NOT NULL,
PRIMARY KEY(id_farmacos),
FOREIGN KEY(id_categorias) REFERENCES Tab_categorias(id_categorias)


);

CREATE TABLE Tab_categorias(

marca_categorias varchar(99),
farmaco_categorias varchar (99) NOT NULL,
id_categorias int AUTO_INCREMENT NOT NULL,
PRIMARY KEY(id_categorias)




);

INSERT INTO Tab_categorias(marca_categorias,farmaco_categorias)VALUES("Bayer","Xarope");
INSERT INTO Tab_categorias(marca_categorias,farmaco_categorias)VALUES("Cristal","água");
INSERT INTO Tab_categorias(marca_categorias,farmaco_categorias)VALUES("NaturaMedica","remédio natural");




INSERT INTO Tab_farmacos(nome_farmacos,indicacao_farmacos,preco_farmacos,id_categorias) VALUES( "Casca de pau" ,"somente sob prescrição médica",11.9 , 3 );
INSERT INTO Tab_farmacos(nome_farmacos,indicacao_farmacos,preco_farmacos,id_categorias) VALUES( "Água com gás" ,"livre para todos os públicos",5.9 , 2 );
INSERT INTO Tab_farmacos(nome_farmacos,indicacao_farmacos,preco_farmacos,id_categorias) VALUES( "Xarope para tosse" ,"livre para todos os públicos",21.9 , 1);
INSERT INTO Tab_farmacos(nome_farmacos,indicacao_farmacos,preco_farmacos,id_categorias) VALUES( "Água sem gás" ,"livre para todos os públicos",3.9 , 2);
INSERT INTO Tab_farmacos(nome_farmacos,indicacao_farmacos,preco_farmacos,id_categorias) VALUES( "Soro fisiológico" ,"livre para todos os públicos",11.9 , 3);

SELECT  nome_farmacos,CONCAT("R$",FORMAT(preco_farmacos,2,"pt-BR")) as Preço FROM Tab_farmacos WHERE preco_farmacos>50;

SELECT nome_farmacos,CONCAT("R$",FORMAT(preco_farmacos,2,"pt-BR")) as Preço FROM Tab_farmacos WHERE preco_farmacos BETWEEN 3 AND 60;

SELECT * FROM Tab_farmacos WHERE nome_farmacos LIKE "%b%";

SELECT * FROM Tab_farmacos INNER JOIN Tab_categorias ON Tab_farmacos.id_categorias=Tab_categorias.id_categorias;

SELECT * FROM Tab_farmacos INNER JOIN Tab_categorias ON Tab_farmacos.id_categorias=Tab_categorias.id_categorias WHERE Tab_categorias.id_categorias=1;
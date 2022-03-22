CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE Tab_categoria(

id_categoria int AUTO_INCREMENT NOT NULL,

qualificacao_categoria varchar(55) NOT NULL,

area_categoria varchar(55) NOT NULL,

PRIMARY KEY(id_categoria));

CREATE TABLE Tab_curso(

id_categoria int  NOT NULL,
id_curso int AUTO_INCREMENT NOT NULL,
nome_curso varchar(55) NOT NULL,
data_inicio_curso date,
data_termino_curso date,
frase_que_o_defini_curso varchar(255) NOT NULL,
valor_curso double NOT NULL,
PRIMARY KEY(id_curso),
FOREIGN KEY(id_categoria) REFERENCES Tab_categoria(id_categoria));

INSERT INTO Tab_categoria(qualificacao_categoria,area_categoria)VALUES("Técnica","Tecnologia");
INSERT INTO Tab_categoria(qualificacao_categoria,area_categoria)VALUES("Treinamento profissional","Humanidades");
INSERT INTO Tab_categoria(qualificacao_categoria,area_categoria)VALUES("Graduação","Exatas");

INSERT INTO Tab_curso(id_categoria,nome_curso,data_inicio_curso,data_termino_curso,frase_que_o_defini_curso,valor_curso)VALUES(3,"Engenharia da Computação","2022-05-05","2027-05-05"," maquinários,ligações,processos,empreendimentos ou pertubações,algoritmos e paixões" ,59999);
INSERT INTO Tab_curso(id_categoria,nome_curso,data_inicio_curso,data_termino_curso,frase_que_o_defini_curso,valor_curso)VALUES(1,"Poesia com programação","2022-03-21","2023-06-21","algo;nesse;ritmo;constante;ritmo;meio;meu;cansado;mas;enfim;compilado;algoritmo;return 'vida' ",0000);
INSERT INTO Tab_curso(id_categoria,nome_curso,data_inicio_curso,data_termino_curso,frase_que_o_defini_curso,valor_curso)VALUES(2  ,"Filosofar no mundo contemporâneo","0000-00-00","0000-00-00","Filosofar,pensar?Na verdade?Ou só no que não é dito,mas está nas nossas profundidades?Prepara-se, a vida está aí",1111);

SELECT * FROM Tab_categoria;

SELECT * FROM Tab_curso;

SELECT * FROM Tab_curso WHERE valor_curso>50;

SELECT * FROM Tab_curso WHERE valor_curso BETWEEN 3 AND 60;

SELECT * FROM Tab_curso WHERE nome_curso LIKE "%j%";

SELECT * FROM Tab_curso INNER JOIN Tab_categoria ON Tab_curso.id_categoria=Tab_categoria.id_categoria;

SELECT * FROM Tab_curso INNER JOIN Tab_categoria ON Tab_curso.id_categoria=Tab_categoria.id_categoria WHERE Tab_categoria.qualificacao_categoria="Técnica";




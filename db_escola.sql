CREATE DATABASE escola;
USE escola;
CREATE TABLE tab_estudantes(
nome_estudante varchar(99),
id_estudante int AUTO_INCREMENT NOT NULL,
email_estudante varchar (99) NOT NULL,
ano_estudante varchar(9),
status_matricula_estudante varchar(11),
nota_final_estudante decimal(2,2),
PRIMARY KEY(id_estudante));
show tables;
DESCRIBE tab_estudantes;
ALTER TABLE tab_estudantes MODIFY nota_final_estudante decimal(8,2);
INSERT INTO tab_estudantes(nome_estudante, email_estudante, ano_estudante,status_matricula_estudante,nota_final_estudante) VALUES("Mário","mari@mail.com","3º Fund.","ATIVA",2.5);
INSERT INTO tab_estudantes VALUES("Joana",2,"joa@mail.com","1º EM","ATIVA",9.5);
INSERT INTO tab_estudantes VALUES("Gabriel",3,"gabi@mail.com","9º Fund.","INATIVA",6.9);
INSERT INTO tab_estudantes (nome_estudante,email_estudante,ano_estudante,status_matricula_estudante,nota_final_estudante)VALUES("Pedra","pedri@mail.com","5º Fund.","ATIVA",9.9);

ALTER TABLE tab_estudantes CHANGE nome_estudante primeiroNome_estudante varchar(99);
SELECT * FROM tab_estudantes;

SELECT primeiroNome_estudante,nota_final_estudante FROM tab_estudantes WHERE nota_final_estudante>7;
SELECT primeiroNome_estudante,nota_final_estudante FROM tab_estudantes WHERE nota_final_estudante<7;

UPDATE tab_estudantes SET status_matricula_estudante="ATIVA" WHERE id_estudante=3;




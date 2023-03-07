-- Criando base de dados
CREATE DATABASE DB_SGRH;
-- CREATE DATABASE DB_SGEC;
-- CREATE DATABASE DB_SGEE;

-- Usando
USE DB_SGRH;
-- USE DB_SGEC;
-- USE DB_SGEE;

-- Criando as tabelas
CREATE TABLE TB_COLABORADORES(
id bigint auto_increment,
nome varchar(80) not null,
cpf varchar(11) not null,
data_admissao date,
contrato varchar(80) not null,
salario double not null,
PRIMARY KEY (id)
);
-- CREATE TABLE TB_PRODUTOS(
-- id bigint auto_increment,
-- nome varchar(80) not null,
-- quantidade int not null,
-- preco double not null,
-- data_validade date not null,
-- data_entrega date,
-- nota float not null
-- PRIMARY KEY (id)
-- );
-- CREATE TABLE TB_ALUNOS(
-- id bigint auto_increment,
-- nome varchar(80) not null,
-- cpf varchar(11) not null,
-- data_matricula date not null,
-- data_transferencia date,
-- PRIMARY KEY (id)
-- );



-- Mock de dados TB_COLABORADORES
INSERT INTO TB_COLABORADORES(nome, cpf, contrato, salario)
values("Adriana Silva", "00000000000", "CLT", 2000.00 );
INSERT INTO TB_COLABORADORES(nome, cpf, contrato, salario)
values("Morgana Tavares Bittecurt", "00000000000", "CLT", 2230.00 );
INSERT INTO TB_COLABORADORES(nome, cpf, contrato, salario)
values("Silvio Andrade", "00000000000", "PJ", 4000.00 );
INSERT INTO TB_COLABORADORES(nome, cpf, contrato, salario)
values("Carlos Pereira Souza", "00000000000", "CLT", 1300.00 );
INSERT INTO TB_COLABORADORES(nome, cpf, contrato, salario)
values("Felipe Silva Santos", "00000000000", "CLT", 2000.87 );
INSERT INTO TB_COLABORADORES(nome, cpf, contrato, salario)
values("Izabel Oliveira", "00000000000", "CLT", 2570.00 );
INSERT INTO TB_COLABORADORES(nome, cpf, contrato, salario)
values("Rodrigo Albuquerque", "00000000000", "PJ", 6000.00 );
INSERT INTO TB_COLABORADORES(nome, cpf, contrato, salario)
values("Carmem Miranda Fontinelli", "00000000000", "CLT", 5600.00 );

-- Mock de dados TB_PRODUTOS
-- INSERT INTO TB_PRODUTOS(nome, quantidade, preco, data_validade)
-- VALUES("manga", 1, 2.99,'2023-03-01');
-- INSERT INTO TB_PRODUTOS(nome, quantidade, preco, data_validade)
-- VALUES("caqui", 6, 10.00,'2023-03-07');
-- INSERT INTO TB_PRODUTOS(nome, quantidade, preco, data_validade)
-- VALUES("laranja", 30, 14.99,'2023-03-25');
-- INSERT INTO TB_PRODUTOS(nome, quantidade, preco, data_validade)
-- VALUES("uva", 1, 8.99,'2023-03-25');
-- INSERT INTO TB_PRODUTOS(nome, quantidade, preco, data_validade)
-- VALUES("pessego", 3, 7.80,'2023-03-25');
-- INSERT INTO TB_PRODUTOS(nome, quantidade, preco, data_validade)
-- VALUES("nectarina", 5, 20.03,'2023-03-21');
-- INSERT INTO TB_PRODUTOS(nome, quantidade, preco, data_validade)
-- VALUES("pera", 6, 6.00,'2023-03-24');
-- INSERT INTO TB_PRODUTOS(nome, quantidade, preco, data_validade)
-- VALUES("banana", 12, 15.00,'2023-03-25');




-- Mock de dados TB_ALUNOS
-- INSERT INTO TB_ALUNOS(nome, cpf, data_matricula, nota)
-- VALUES("Andre Oliveira Soares", "00000000000",'2019-01-01',  10.0);
-- INSERT INTO TB_ALUNOS(nome, cpf, data_matricula, nota)
-- VALUES("João Pedro Carvalho", "00000000000",'2019-01-23', 2.0);
-- INSERT INTO TB_ALUNOS(nome, cpf, data_matricula, nota)
-- VALUES("Mariana Silva", "00000000000",'2020-03-01', 9.5);
-- INSERT INTO TB_ALUNOS(nome, cpf, data_matricula, nota)
-- VALUES("Gabriel Ferreira Fontoura", "00000000000",'2019-04-20', 10.0);
-- INSERT INTO TB_ALUNOS(nome, cpf, data_matricula, nota)
-- VALUES("Lucas Gabriel Lima", "00000000000",'2022-10-06', 4.0);
-- INSERT INTO TB_ALUNOS(nome, cpf, data_matricula, nota)
-- VALUES(Cintia Oliveira Duarte", "00000000000",'2021-11-01', 6.0);
-- INSERT INTO TB_ALUNOS(nome, cpf, data_matricula, nota)
-- VALUES("Luana Novaes", "00000000000",'2019-02-28', 8.5);
-- INSERT INTO TB_ALUNOS(nome, cpf, data_matricula, nota)
-- VALUES("Maria Eduarda Santos", "00000000000",'2019-09-11', 7.0);



-- Consultando TB_COLABORADORES
SELECT * FROM TB_COLABORADORES WHERE salario > 2000.00;
SELECT * FROM TB_COLABORADORES WHERE salario < 2000.00;

-- Consultando TB_PRODUTOS
-- SELECT * FROM TB_PRODUTOS WHERE PRECO > 500.00;
-- SELECT * FROM TB_PRODUTOS WHERE PRECO < 500.00;

-- Consultando TB_ALUNOS
-- SELECT * FROM TB_ALUNOS WHERE nota > 7.0;
-- SELECT * FROM TB_ALUNOS WHERE nota < 7.0;

-- Atualizando TB_COLABORADORES
UPDATE TB_COLABORADORES SET contrato = "PJ" WHERE nome = "Carmem Miranda Fontinelli";

-- Atualizando TB_PRODUTOS
-- UPDATE TB_PRODUTOS SET preco = 500 WHERE nome = "nectarina";

-- Atualizando TB_ALUNOS
-- UPDATE TB_ALUNOS SET nota = 9 WHERE id = 2;




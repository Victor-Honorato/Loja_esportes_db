CREATE DATABASE IF NOT EXISTS  camisa5_store;
USE camisa5_store;


CREATE TABLE camisas_time ( 
id INT AUTO_INCREMENT PRIMARY KEY,
tamanho VARCHAR(10) NOT NULL,
modelo VARCHAR(80) NOT NULL,
ano_lancamento VARCHAR(80),
preco VARCHAR(50),
quantidade INT
);

INSERT INTO camisas_time(tamanho, modelo, ano_lancamento, preco, quantidade) VALUES
	('G', 'Flamengo', '2024', '399.90', 30),
    ('M', 'Flamengo', '2024', '399.90', 50),
    ('GG', 'Botafogo', '2024', '199.90', 40),
    ('G', 'Botafogo', '2024', '199.90', 30),
    ('P', 'Corinthians', '2024', '399.90', 40),
    ('G', 'Corinthians', '2024', '399.90', 30),
    ('M', 'São Paulo', '2024', '299.90', 35),
    ('G', 'Vasco', '2024', '259.90', 30),
    ('P', 'Vasco', '2024', '259.90', 80),
    ('G', 'Flamengo', '2008', '199.90', 30),
    ('G', 'Vasco', '1999', '199.90', 28),
    ('M', 'Flamengo', '2008', '399.90', 30),
    ('P', 'Vasco', '1999', '199.90', 30),
    ('G', 'Brasil', '2022', '399.90', 30),
    ('G', 'Argentina', '2022', '399.90', 30),
	('P', 'Bangu', '2014', '159.90', 80),
    ('G', 'Planaltina', '2008', '99.90', 30),
    ('G', 'Gama', '1999', '99.90', 28),
    ('M', 'Brasiliense', '2008', '99.90', 30),
    ('P', 'Ceara', '1999', '199.90', 30),
    ('G', 'Bahia', '2022', '199.90', 30),
    ('G', 'Fortaleza', '2022', '199.90', 30);

CREATE TABLE camisas_casual (
id INT AUTO_INCREMENT PRIMARY KEY,
tamanho VARCHAR(10) NOT NULL,
marca VARCHAR(80) NOT NULL,
preco VARCHAR(50),
quantidade INT
);

INSERT INTO camisas_casual(tamanho, marca, preco, quantidade) VALUES
	('G', 'Nike', '129.90', 50),
    ('M', 'Nike', '129.90', 50),
    ('P', 'Nike', '129.90', 50),
    ('G', 'Puma', '109.90', 30),
    ('M', 'Puma', '109.90', 30),
    ('P', 'Puma', '109.90', 30),
    ('G', 'Adidas', '199.90', 50),
    ('M', 'Adidas', '199.90', 50),
    ('P', 'Adidas', '199.90', 50),
    ('G', 'Under Armour', '99.90', 50),
    ('M', 'Under Armour', '99.90', 50),
    ('P', 'Under Armour', '99.90', 50),
    ('G', 'Fila', '59.90', 20),
    ('M', 'Fila', '59.90', 20),
    ('P', 'Fila', '59.90', 20),
	('G', 'Mizuno', '89.90', 20),
    ('M', 'Mizuno', '89.90', 20),
    ('P', 'Mizuno', '89.90', 20),
	('G', 'Lacoste Sports', '459.90', 80),
    ('M', 'Lacoste Sports', '459.90', 60),
    ('P', 'Lacoste Sports', '459.90', 10);
    
CREATE TABLE chuteiras (
id INT AUTO_INCREMENT PRIMARY KEY,
tamanho VARCHAR(10) NOT NULL,
marca VARCHAR(80) NOT NULL,
tipo varchar(80),
preco VARCHAR(50),
quantidade INT
);

INSERT INTO chuteiras (tamanho, marca, tipo, preco, quantidade) VALUES
	('41', 'Nike', 'Trava', '429.90', 50),
    ('40', 'Nike', 'Society', '329.90', 50),
    ('39', 'Nike', 'Futsal', '129.90', 50),
	('41', 'Puma', 'Trava', '429.90', 50),
    ('40', 'Puma', 'Society', '329.90', 50),
    ('39', 'Puma', 'Futsal', '129.90', 50),
	('41', 'Adidas', 'Trava', '429.90', 50),
    ('40', 'Adidas', 'Society', '129.90', 50),
    ('39', 'Adidas', 'Futsal', '229.90', 50),
	('41', 'New Balance', 'Trava', '129.90', 50),
    ('40', 'New Balance', 'Society', '429.90', 50),
    ('39', 'New Balance', 'Futsal', '329.90', 50),
	('41', 'Joma', 'Trava', '429.90', 50),
    ('40', 'Joma', 'Society', '229.90', 50),
    ('39', 'Joma', 'Futsal', '729.90', 50),
	('41', 'Penalty', 'Trava', '329.90', 50),
    ('40', 'Penalty', 'Society', '229.90', 50),
    ('39', 'Penalty', 'Futsal', '129.90', 50),
	('41', 'Mizuno', 'Trava', '229.90', 50),
    ('40', 'Mizuno', 'Society', '229.90', 50),
    ('39', 'Mizuno', 'Futsal', '99.90', 50);


CREATE TABLE cliente (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(10) NOT NULL,
telefone VARCHAR(80) NOT NULL,
data_nascimento DATE
);

ALTER TABLE cliente
MODIFY COLUMN nome VARCHAR(100);


INSERT INTO cliente (nome, telefone, data_nascimento) VALUES
	('Victor Honorato', '996418265', '1999-06-08'),
	('Victor Azevedo', '996425364', '1998-05-31'),
	('Lucas Cabral', '986317265', '1996-04-16'),
	('Matheus Queiroz', '987418844', '1995-12-21'),
	('Lucas Souza', '796818265', '1999-06-08'),
	('Luciano Sousa', '696818264', '1976-11-06'),
	('Julia Andrade', '496448263', '2002-04-25'),
	('Michaely Vasco', '596418265', '2002-04-29'),
	('Maria Luiza', '996496265', '2003-04-15'),
	('Gabriel Afonso', '196468265', '1999-05-18'),
	('Miguel Afonso', '296718285', '2001-10-06'),
	('Juliano Silva', '859418265', '2003-02-25'),
	('Jualison Da silva', '486418265', '2005-09-09'),
	('Davi de moura', '556418265', '2005-09-26');


CREATE TABLE endereco (
id INT AUTO_INCREMENT PRIMARY KEY,
endereco1 VARCHAR(10) NOT NULL,
cidade VARCHAR(80) NOT NULL,
estado VARCHAR(80),
pais VARCHAR(50)
);

ALTER TABLE endereco
MODIFY COLUMN endereco1 VARCHAR(100);

INSERT INTO endereco (endereco1, cidade, estado, pais) VALUES
	('Quadra 3 casa 16', 'Planaltina', 'DF', 'Brasil'),
    ('Quadra 15 casa 19', 'Planaltina', 'DF', 'Brasil'),
    ('Quadra 3 casa 52', 'Asa Norte', 'DF', 'Brasil'),
    ('Quadra 25 casa 16', 'Asa Norte', 'DF', 'Brasil'),
    ('Rua Oscar Freire casa 18', 'São Paulo', 'SP', 'Brasil'),
    ('Rua Barueri casa 20', 'Mogi das Cruzes', 'SP', 'Brasil'),
    ('Rua velasquez 15', 'San Diego', 'California', 'Estados Unidos'),
    ('Rua Bulls 18', 'Chicago', 'Illinois', 'Estados Unidos'),
    ('Quadra 3 casa 26', 'João Pessoa', 'PB', 'Brasil'),
    ('Rua bernardo Sayão', 'Goiania', 'GO', 'Brasil'),
    ('Rua Anhanguera', 'Goiania', 'GO', 'Brasil'),
    ('Rua Caribessa 15', 'João Pessoa', 'PB', 'Brasil'),
    ('Rua horto 19', 'Belo Horizonte', 'MG', 'Brasil'),
    ('Rua Toca da raposa 15', 'Belo Horizonte', 'MG', 'Brasil');



CREATE DATABASE usuariosLibbs;

USE usuariosLibbs;

CREATE TABLE usuarios(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
email VARCHAR(100),
senha VARCHAR(40)
);


INSERT INTO usuarios (nome, email, senha) 
VALUES ('Roger', 'rogeralves@2005gmail.com', '123'),
('vitor', 'vitoralves@gmail.com', '321'),
('felipe', 'felipealves@gmail.com', '654');


CREATE TABLE produtos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DOUBLE,
    quantidade INT
);

INSERT INTO produtos(nome, preco, quantidade)
VALUES ('nescau', '12.00', '2'),
('toddy', '10.00', '3'),
('sucrilhos', '20.00', '4'),
('Arroz', '5.00', '1'),
('feijao', '30.00', '5');

CREATE TABLE pedido(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idUsuario INT,
    idProduto INT,
    FOREIGN KEY (idUsuario) REFERENCES usuarios(id),
    FOREIGN KEY (idProduto) REFERENCES produtos(id)
);

INSERT INTO pedido(IdUsuario, idProduto)
VALUES (1, 2),
(2, 1),
(3, 3);


UPDATE usuarios SET nome = "lucas santos" WHERE id =3;
 
SELECT * FROM usuarios; 
SELECT * FROM produtos;

-- SOMAR
SELECT SUM(preco) FROM produtos;
-- MEDIA
SELECT AVG (preco) FROM produtos;

 

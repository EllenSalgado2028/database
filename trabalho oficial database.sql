CREATE DATABASE ecommerce;

USE ecommerce;
Show tables;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(200) NOT NULL
);

CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);
CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL
);
CREATE TABLE Fornecedor (
    id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornecedor VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);
CREATE TABLE Produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    id_categoria INT,
    id_fornecedor INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);
CREATE TABLE Estoque (
    id_estoque INT PRIMARY KEY AUTO_INCREMENT,
    quantidade INT NOT NULL,
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
CREATE TABLE Pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    id_cliente INT,
    id_funcionario INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);
CREATE TABLE ItemPedido (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    quantidade INT NOT NULL,
    subtotal DECIMAL(10,2) NOT NULL,
    id_pedido INT,
    id_produto INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);
CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    forma_pagamento VARCHAR(50) NOT NULL,
    status_pagamento VARCHAR(50) NOT NULL,
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);
CREATE TABLE Entrega (
    id_entrega INT PRIMARY KEY AUTO_INCREMENT,
    status_entrega VARCHAR(50) NOT NULL,
    data_entrega DATE NOT NULL,
    id_pedido INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);

INSERT INTO Cliente (nome, cpf, email, telefone, endereco) VALUES
('Cliente 1','111.111.111-01','cliente1@gmail.com','81999990001','Recife - PE'),
('Cliente 2','111.111.111-02','cliente2@gmail.com','81999990002','Olinda - PE'),
('Cliente 3','111.111.111-03','cliente3@gmail.com','81999990003','Paulista - PE'),
('Cliente 4','111.111.111-04','cliente4@gmail.com','81999990004','Recife - PE'),
('Cliente 5','111.111.111-05','cliente5@gmail.com','81999990005','Olinda - PE'),
('Cliente 6','111.111.111-06','cliente6@gmail.com','81999990006','Paulista - PE'),
('Cliente 7','111.111.111-07','cliente7@gmail.com','81999990007','Recife - PE'),
('Cliente 8','111.111.111-08','cliente8@gmail.com','81999990008','Olinda - PE'),
('Cliente 9','111.111.111-09','cliente9@gmail.com','81999990009','Paulista - PE'),
('Cliente 10','111.111.111-10','cliente10@gmail.com','81999990010','Recife - PE'),
('Cliente 11','111.111.111-11','cliente11@gmail.com','81999990011','Olinda - PE'),
('Cliente 12','111.111.111-12','cliente12@gmail.com','81999990012','Paulista - PE'),
('Cliente 13','111.111.111-13','cliente13@gmail.com','81999990013','Recife - PE'),
('Cliente 14','111.111.111-14','cliente14@gmail.com','81999990014','Olinda - PE'),
('Cliente 15','111.111.111-15','cliente15@gmail.com','81999990015','Paulista - PE'),
('Cliente 16','111.111.111-16','cliente16@gmail.com','81999990016','Recife - PE'),
('Cliente 17','111.111.111-17','cliente17@gmail.com','81999990017','Olinda - PE'),
('Cliente 18','111.111.111-18','cliente18@gmail.com','81999990018','Paulista - PE'),
('Cliente 19','111.111.111-19','cliente19@gmail.com','81999990019','Recife - PE'),
('Cliente 20','111.111.111-20','cliente20@gmail.com','81999990020','Olinda - PE'),
('Cliente 21','111.111.111-21','cliente21@gmail.com','81999990021','Paulista - PE'),
('Cliente 22','111.111.111-22','cliente22@gmail.com','81999990022','Recife - PE'),
('Cliente 23','111.111.111-23','cliente23@gmail.com','81999990023','Olinda - PE'),
('Cliente 24','111.111.111-24','cliente24@gmail.com','81999990024','Paulista - PE'),
('Cliente 25','111.111.111-25','cliente25@gmail.com','81999990025','Recife - PE'),
('Cliente 26','111.111.111-26','cliente26@gmail.com','81999990026','Olinda - PE'),
('Cliente 27','111.111.111-27','cliente27@gmail.com','81999990027','Paulista - PE'),
('Cliente 28','111.111.111-28','cliente28@gmail.com','81999990028','Recife - PE'),
('Cliente 29','111.111.111-29','cliente29@gmail.com','81999990029','Olinda - PE'),
('Cliente 30','111.111.111-30','cliente30@gmail.com','81999990030','Paulista - PE'),
('Cliente 31','111.111.111-31','cliente31@gmail.com','81999990031','Recife - PE'),
('Cliente 32','111.111.111-32','cliente32@gmail.com','81999990032','Olinda - PE'),
('Cliente 33','111.111.111-33','cliente33@gmail.com','81999990033','Paulista - PE'),
('Cliente 34','111.111.111-34','cliente34@gmail.com','81999990034','Recife - PE'),
('Cliente 35','111.111.111-35','cliente35@gmail.com','81999990035','Olinda - PE'),
('Cliente 36','111.111.111-36','cliente36@gmail.com','81999990036','Paulista - PE'),
('Cliente 37','111.111.111-37','cliente37@gmail.com','81999990037','Recife - PE'),
('Cliente 38','111.111.111-38','cliente38@gmail.com','81999990038','Olinda - PE'),
('Cliente 39','111.111.111-39','cliente39@gmail.com','81999990039','Paulista - PE'),
('Cliente 40','111.111.111-40','cliente40@gmail.com','81999990040','Recife - PE'),
('Cliente 41','111.111.111-41','cliente41@gmail.com','81999990041','Olinda - PE'),
('Cliente 42','111.111.111-42','cliente42@gmail.com','81999990042','Paulista - PE'),
('Cliente 43','111.111.111-43','cliente43@gmail.com','81999990043','Recife - PE'),
('Cliente 44','111.111.111-44','cliente44@gmail.com','81999990044','Olinda - PE'),
('Cliente 45','111.111.111-45','cliente45@gmail.com','81999990045','Paulista - PE'),
('Cliente 46','111.111.111-46','cliente46@gmail.com','81999990046','Recife - PE'),
('Cliente 47','111.111.111-47','cliente47@gmail.com','81999990047','Olinda - PE'),
('Cliente 48','111.111.111-48','cliente48@gmail.com','81999990048','Paulista - PE'),
('Cliente 49','111.111.111-49','cliente49@gmail.com','81999990049','Recife - PE'),
('Cliente 50','111.111.111-50','cliente50@gmail.com','81999990050','Olinda - PE');

INSERT INTO Funcionario (nome, cargo, salario) VALUES
('Funcionario 1','Gerente',3500.00),
('Funcionario 2','Vendedor',2200.00),
('Funcionario 3','Estoquista',1800.00),
('Funcionario 4','Atendente',1900.00),
('Funcionario 5','Supervisor',3200.00),
('Funcionario 6','Gerente',3500.00),
('Funcionario 7','Vendedor',2200.00),
('Funcionario 8','Estoquista',1800.00),
('Funcionario 9','Atendente',1900.00),
('Funcionario 10','Supervisor',3200.00),
('Funcionario 11','Gerente',3500.00),
('Funcionario 12','Vendedor',2200.00),
('Funcionario 13','Estoquista',1800.00),
('Funcionario 14','Atendente',1900.00),
('Funcionario 15','Supervisor',3200.00),
('Funcionario 16','Gerente',3500.00),
('Funcionario 17','Vendedor',2200.00),
('Funcionario 18','Estoquista',1800.00),
('Funcionario 19','Atendente',1900.00),
('Funcionario 20','Supervisor',3200.00),
('Funcionario 21','Gerente',3500.00),
('Funcionario 22','Vendedor',2200.00),
('Funcionario 23','Estoquista',1800.00),
('Funcionario 24','Atendente',1900.00),
('Funcionario 25','Supervisor',3200.00),
('Funcionario 26','Gerente',3500.00),
('Funcionario 27','Vendedor',2200.00),
('Funcionario 28','Estoquista',1800.00),
('Funcionario 29','Atendente',1900.00),
('Funcionario 30','Supervisor',3200.00),
('Funcionario 31','Gerente',3500.00),
('Funcionario 32','Vendedor',2200.00),
('Funcionario 33','Estoquista',1800.00),
('Funcionario 34','Atendente',1900.00),
('Funcionario 35','Supervisor',3200.00),
('Funcionario 36','Gerente',3500.00),
('Funcionario 37','Vendedor',2200.00),
('Funcionario 38','Estoquista',1800.00),
('Funcionario 39','Atendente',1900.00),
('Funcionario 40','Supervisor',3200.00),
('Funcionario 41','Gerente',3500.00),
('Funcionario 42','Vendedor',2200.00),
('Funcionario 43','Estoquista',1800.00),
('Funcionario 44','Atendente',1900.00),
('Funcionario 45','Supervisor',3200.00),
('Funcionario 46','Gerente',3500.00),
('Funcionario 47','Vendedor',2200.00),
('Funcionario 48','Estoquista',1800.00),
('Funcionario 49','Atendente',1900.00),
('Funcionario 50','Supervisor',3200.00);

INSERT INTO Categoria (id_categoria, nome_categoria) VALUE
(1,'Eletrônicos'),
(2,'Games'),
(3,'Acessórios'),
(4,'Informática'),
(5,'Celulares'),
(6,'Tablets'),
(7,'TVs'),
(8,'Áudio'),
(9,'Vídeo'),
(10,'Smart Home'),
(11,'Monitores'),
(12,'Impressoras'),
(13,'Hardware'),
(14,'Periféricos'),
(15,'Cadeiras Gamer'),
(16,'Consoles'),
(17,'Jogos'),
(18,'Peças de PC'),
(19,'Gabinetes'),
(20,'Coolers'),
(21,'SSD'),
(22,'HD Externo'),
(23,'Memória RAM'),
(24,'Placa de Vídeo'),
(25,'Processadores'),
(26,'Fontes'),
(27,'Teclados'),
(28,'Mouses'),
(29,'Headsets'),
(30,'Webcams'),
(31,'Microfones'),
(32,'Cabos'),
(33,'Carregadores'),
(34,'Power Bank'),
(35,'Relógios Smart'),
(36,'Casa Inteligente'),
(37,'Segurança'),
(38,'Automação'),
(39,'Streaming'),
(40,'Roteadores'),
(41,'Modem'),
(42,'Notebook'),
(43,'Ultrabook'),
(44,'Macbook'),
(45,'Gaming PC'),
(46,'Escritório'),
(47,'Telefonia'),
(48,'Gadgets'),
(49,'Acessórios Gamer'),
(50,'Tecnologia');

INSERT INTO Fornecedor (id_fornecedor, nome_fornecedor, telefone) VALUES
(1,'Fornecedor 1','81999990001'),
(2,'Fornecedor 2','81999990002'),
(3,'Fornecedor 3','81999990003'),
(4,'Fornecedor 4','81999990004'),
(5,'Fornecedor 5','81999990005'),
(6,'Fornecedor 6','81999990006'),
(7,'Fornecedor 7','81999990007'),
(8,'Fornecedor 8','81999990008'),
(9,'Fornecedor 9','81999990009'),
(10,'Fornecedor 10','81999990010'),
(11,'Fornecedor 11','81999990011'),
(12,'Fornecedor 12','81999990012'),
(13,'Fornecedor 13','81999990013'),
(14,'Fornecedor 14','81999990014'),
(15,'Fornecedor 15','81999990015'),
(16,'Fornecedor 16','81999990016'),
(17,'Fornecedor 17','81999990017'),
(18,'Fornecedor 18','81999990018'),
(19,'Fornecedor 19','81999990019'),
(20,'Fornecedor 20','81999990020'),
(21,'Fornecedor 21','81999990021'),
(22,'Fornecedor 22','81999990022'),
(23,'Fornecedor 23','81999990023'),
(24,'Fornecedor 24','81999990024'),
(25,'Fornecedor 25','81999990025'),
(26,'Fornecedor 26','81999990026'),
(27,'Fornecedor 27','81999990027'),
(28,'Fornecedor 28','81999990028'),
(29,'Fornecedor 29','81999990029'),
(30,'Fornecedor 30','81999990030'),
(31,'Fornecedor 31','81999990031'),
(32,'Fornecedor 32','81999990032'),
(33,'Fornecedor 33','81999990033'),
(34,'Fornecedor 34','81999990034'),
(35,'Fornecedor 35','81999990035'),
(36,'Fornecedor 36','81999990036'),
(37,'Fornecedor 37','81999990037'),
(38,'Fornecedor 38','81999990038'),
(39,'Fornecedor 39','81999990039'),
(40,'Fornecedor 40','81999990040'),
(41,'Fornecedor 41','81999990041'),
(42,'Fornecedor 42','81999990042'),
(43,'Fornecedor 43','81999990043'),
(44,'Fornecedor 44','81999990044'),
(45,'Fornecedor 45','81999990045'),
(46,'Fornecedor 46','81999990046'),
(47,'Fornecedor 47','81999990047'),
(48,'Fornecedor 48','81999990048'),
(49,'Fornecedor 49','81999990049'),
(50,'Fornecedor 50','81999990050');

INSERT INTO Produto (id_produto, nome_produto, preco, id_categoria, id_fornecedor) VALUES
(1,'Produto 1',100.00,1,1),
(2,'Produto 2',120.00,2,2),
(3,'Produto 3',140.00,3,3),
(4,'Produto 4',160.00,4,4),
(5,'Produto 5',180.00,5,5),
(6,'Produto 6',200.00,6,6),
(7,'Produto 7',220.00,7,7),
(8,'Produto 8',240.00,8,8),
(9,'Produto 9',260.00,9,9),
(10,'Produto 10',280.00,10,10),
(11,'Produto 11',300.00,11,11),
(12,'Produto 12',320.00,12,12),
(13,'Produto 13',340.00,13,13),
(14,'Produto 14',360.00,14,14),
(15,'Produto 15',380.00,15,15),
(16,'Produto 16',400.00,16,16),
(17,'Produto 17',420.00,17,17),
(18,'Produto 18',440.00,18,18),
(19,'Produto 19',460.00,19,19),
(20,'Produto 20',480.00,20,20),
(21,'Produto 21',500.00,21,21),
(22,'Produto 22',520.00,22,22),
(23,'Produto 23',540.00,23,23),
(24,'Produto 24',560.00,24,24),
(25,'Produto 25',580.00,25,25),
(26,'Produto 26',600.00,26,26),
(27,'Produto 27',620.00,27,27),
(28,'Produto 28',640.00,28,28),
(29,'Produto 29',660.00,29,29),
(30,'Produto 30',680.00,30,30),
(31,'Produto 31',700.00,31,31),
(32,'Produto 32',720.00,32,32),
(33,'Produto 33',740.00,33,33),
(34,'Produto 34',760.00,34,34),
(35,'Produto 35',780.00,35,35),
(36,'Produto 36',800.00,36,36),
(37,'Produto 37',820.00,37,37),
(38,'Produto 38',840.00,38,38),
(39,'Produto 39',860.00,39,39),
(40,'Produto 40',880.00,40,40),
(41,'Produto 41',900.00,41,41),
(42,'Produto 42',920.00,42,42),
(43,'Produto 43',940.00,43,43),
(44,'Produto 44',960.00,44,44),
(45,'Produto 45',980.00,45,45),
(46,'Produto 46',1000.00,46,46),
(47,'Produto 47',1020.00,47,47),
(48,'Produto 48',1040.00,48,48),
(49,'Produto 49',1060.00,49,49),
(50,'Produto 50',1080.00,50,50);

INSERT INTO Estoque (id_estoque, quantidade, id_produto) VALUES
(1,10,1),
(2,15,2),
(3,20,3),
(4,25,4),
(5,30,5),
(6,35,6),
(7,40,7),
(8,45,8),
(9,50,9),
(10,55,10),
(11,60,11),
(12,65,12),
(13,70,13),
(14,75,14),
(15,80,15),
(16,85,16),
(17,90,17),
(18,95,18),
(19,100,19),
(20,105,20),
(21,110,21),
(22,115,22),
(23,120,23),
(24,125,24),
(25,130,25),
(26,135,26),
(27,140,27),
(28,145,28),
(29,150,29),
(30,155,30),
(31,160,31),
(32,165,32),
(33,170,33),
(34,175,34),
(35,180,35),
(36,185,36),
(37,190,37),
(38,195,38),
(39,200,39),
(40,205,40),
(41,210,41),
(42,215,42),
(43,220,43),
(44,225,44),
(45,230,45),
(46,235,46),
(47,240,47),
(48,245,48),
(49,250,49),
(50,255,50);

INSERT INTO Pedido (id_pedido, data_pedido, valor_total, id_cliente, id_funcionario) VALUES
(1,'2026-01-01',100.00,1,1),
(2,'2026-01-02',120.00,2,2),
(3,'2026-01-03',140.00,3,3),
(4,'2026-01-04',160.00,4,4),
(5,'2026-01-05',180.00,5,5),
(6,'2026-01-06',200.00,6,6),
(7,'2026-01-07',220.00,7,7),
(8,'2026-01-08',240.00,8,8),
(9,'2026-01-09',260.00,9,9),
(10,'2026-01-10',280.00,10,10),
(11,'2026-01-11',300.00,11,11),
(12,'2026-01-12',320.00,12,12),
(13,'2026-01-13',340.00,13,13),
(14,'2026-01-14',360.00,14,14),
(15,'2026-01-15',380.00,15,15),
(16,'2026-01-16',400.00,16,16),
(17,'2026-01-17',420.00,17,17),
(18,'2026-01-18',440.00,18,18),
(19,'2026-01-19',460.00,19,19),
(20,'2026-01-20',480.00,20,20),
(21,'2026-01-21',500.00,21,21),
(22,'2026-01-22',520.00,22,22),
(23,'2026-01-23',540.00,23,23),
(24,'2026-01-24',560.00,24,24),
(25,'2026-01-25',580.00,25,25),
(26,'2026-01-26',600.00,26,26),
(27,'2026-01-27',620.00,27,27),
(28,'2026-01-28',640.00,28,28),
(29,'2026-01-29',660.00,29,29),
(30,'2026-01-30',680.00,30,30),
(31,'2026-01-31',700.00,31,31),
(32,'2026-02-01',720.00,32,32),
(33,'2026-02-02',740.00,33,33),
(34,'2026-02-03',760.00,34,34),
(35,'2026-02-04',780.00,35,35),
(36,'2026-02-05',800.00,36,36),
(37,'2026-02-06',820.00,37,37),
(38,'2026-02-07',840.00,38,38),
(39,'2026-02-08',860.00,39,39),
(40,'2026-02-09',880.00,40,40),
(41,'2026-02-10',900.00,41,41),
(42,'2026-02-11',920.00,42,42),
(43,'2026-02-12',940.00,43,43),
(44,'2026-02-13',960.00,44,44),
(45,'2026-02-14',980.00,45,45),
(46,'2026-02-15',1000.00,46,46),
(47,'2026-02-16',1020.00,47,47),
(48,'2026-02-17',1040.00,48,48),
(49,'2026-02-18',1060.00,49,49),
(50,'2026-02-19',1080.00,50,50);

INSERT INTO ItemPedido (id_item, quantidade, subtotal, id_pedido, id_produto) VALUES
(1,1,100.00,1,1),
(2,2,240.00,2,2),
(3,1,140.00,3,3),
(4,3,480.00,4,4),
(5,2,360.00,5,5),
(6,1,200.00,6,6),
(7,2,440.00,7,7),
(8,1,240.00,8,8),
(9,3,780.00,9,9),
(10,2,560.00,10,10),
(11,1,300.00,11,11),
(12,2,640.00,12,12),
(13,1,340.00,13,13),
(14,3,1080.00,14,14),
(15,2,760.00,15,15),
(16,1,400.00,16,16),
(17,2,840.00,17,17),
(18,1,440.00,18,18),
(19,3,1380.00,19,19),
(20,2,960.00,20,20),
(21,1,500.00,21,21),
(22,2,1040.00,22,22),
(23,1,540.00,23,23),
(24,3,1680.00,24,24),
(25,2,1160.00,25,25),
(26,1,600.00,26,26),
(27,2,1240.00,27,27),
(28,1,640.00,28,28),
(29,3,1980.00,29,29),
(30,2,1360.00,30,30),
(31,1,700.00,31,31),
(32,2,1440.00,32,32),
(33,1,740.00,33,33),
(34,3,2280.00,34,34),
(35,2,1560.00,35,35),
(36,1,800.00,36,36),
(37,2,1640.00,37,37),
(38,1,840.00,38,38),
(39,3,2580.00,39,39),
(40,2,1760.00,40,40),
(41,1,900.00,41,41),
(42,2,1840.00,42,42),
(43,1,940.00,43,43),
(44,3,2880.00,44,44),
(45,2,1960.00,45,45),
(46,1,1000.00,46,46),
(47,2,2040.00,47,47),
(48,1,1040.00,48,48),
(49,3,3180.00,49,49),
(50,2,2160.00,50,50);

INSERT INTO Pagamento (id_pagamento, forma_pagamento, status_pagamento, id_pedido) VALUES
(1,'PIX','Pago',1),
(2,'Cartão de Crédito','Pendente',2),
(3,'Boleto','Pago',3),
(4,'Débito','Processando',4),
(5,'PIX','Pago',5),
(6,'Cartão de Crédito','Pendente',6),
(7,'Boleto','Pago',7),
(8,'Débito','Processando',8),
(9,'PIX','Pago',9),
(10,'Cartão de Crédito','Pendente',10),
(11,'Boleto','Pago',11),
(12,'Débito','Processando',12),
(13,'PIX','Pago',13),
(14,'Cartão de Crédito','Pendente',14),
(15,'Boleto','Pago',15),
(16,'Débito','Processando',16),
(17,'PIX','Pago',17),
(18,'Cartão de Crédito','Pendente',18),
(19,'Boleto','Pago',19),
(20,'Débito','Processando',20),
(21,'PIX','Pago',21),
(22,'Cartão de Crédito','Pendente',22),
(23,'Boleto','Pago',23),
(24,'Débito','Processando',24),
(25,'PIX','Pago',25),
(26,'Cartão de Crédito','Pendente',26),
(27,'Boleto','Pago',27),
(28,'Débito','Processando',28),
(29,'PIX','Pago',29),
(30,'Cartão de Crédito','Pendente',30),
(31,'Boleto','Pago',31),
(32,'Débito','Processando',32),
(33,'PIX','Pago',33),
(34,'Cartão de Crédito','Pendente',34),
(35,'Boleto','Pago',35),
(36,'Débito','Processando',36),
(37,'PIX','Pago',37),
(38,'Cartão de Crédito','Pendente',38),
(39,'Boleto','Pago',39),
(40,'Débito','Processando',40),
(41,'PIX','Pago',41),
(42,'Cartão de Crédito','Pendente',42),
(43,'Boleto','Pago',43),
(44,'Débito','Processando',44),
(45,'PIX','Pago',45),
(46,'Cartão de Crédito','Pendente',46),
(47,'Boleto','Pago',47),
(48,'Débito','Processando',48),
(49,'PIX','Pago',49),
(50,'Cartão de Crédito','Pendente',50);

INSERT INTO Entrega (id_entrega, status_entrega, data_entrega, id_pedido) VALUES
(1,'Entregue','2026-02-01',1),
(2,'Em Transporte','2026-02-02',2),
(3,'Preparando','2026-02-03',3),
(4,'Entregue','2026-02-04',4),
(5,'Em Transporte','2026-02-05',5),
(6,'Preparando','2026-02-06',6),
(7,'Entregue','2026-02-07',7),
(8,'Em Transporte','2026-02-08',8),
(9,'Preparando','2026-02-09',9),
(10,'Entregue','2026-02-10',10),
(11,'Em Transporte','2026-02-11',11),
(12,'Preparando','2026-02-12',12),
(13,'Entregue','2026-02-13',13),
(14,'Em Transporte','2026-02-14',14),
(15,'Preparando','2026-02-15',15),
(16,'Entregue','2026-02-16',16),
(17,'Em Transporte','2026-02-17',17),
(18,'Preparando','2026-02-18',18),
(19,'Entregue','2026-02-19',19),
(20,'Em Transporte','2026-02-20',20),
(21,'Preparando','2026-02-21',21),
(22,'Entregue','2026-02-22',22),
(23,'Em Transporte','2026-02-23',23),
(24,'Preparando','2026-02-24',24),
(25,'Entregue','2026-02-25',25),
(26,'Em Transporte','2026-02-26',26),
(27,'Preparando','2026-02-27',27),
(28,'Entregue','2026-02-28',28),
(29,'Em Transporte','2026-03-01',29),
(30,'Preparando','2026-03-02',30),
(31,'Entregue','2026-03-03',31),
(32,'Em Transporte','2026-03-04',32),
(33,'Preparando','2026-03-05',33),
(34,'Entregue','2026-03-06',34),
(35,'Em Transporte','2026-03-07',35),
(36,'Preparando','2026-03-08',36),
(37,'Entregue','2026-03-09',37),
(38,'Em Transporte','2026-03-10',38),
(39,'Preparando','2026-03-11',39),
(40,'Entregue','2026-03-12',40),
(41,'Em Transporte','2026-03-13',41),
(42,'Preparando','2026-03-14',42),
(43,'Entregue','2026-03-15',43),
(44,'Em Transporte','2026-03-16',44),
(45,'Preparando','2026-03-17',45),
(46,'Entregue','2026-03-18',46),
(47,'Em Transporte','2026-03-19',47),
(48,'Preparando','2026-03-20',48),
(49,'Entregue','2026-03-21',49),
(50,'Em Transporte','2026-03-22',50);

SELECT * FROM Cliente;
SELECT * FROM Produto;
SELECT * FROM Categoria;
SELECT * FROM Pedido;
SELECT * FROM Funcionario;
SELECT * FROM Fornecedor;
SELECT * FROM Estoque;
SELECT * FROM Entrega;
SELECT * FROM Pagamento;
SELECT * FROM ItemPedido;
SELECT nome FROM Cliente;
SELECT nome_produto FROM Produto;
SELECT preco FROM Produto;
SELECT cargo FROM Funcionario;
SELECT valor_total FROM Pedido;

SELECT * FROM Produto WHERE preco > 500;
SELECT * FROM Produto WHERE preco < 1000;
SELECT * FROM Cliente WHERE nome = 'Cliente 1';
SELECT * FROM Pedido WHERE valor_total > 1000;
SELECT * FROM Funcionario WHERE salario > 2000;
SELECT * FROM Produto WHERE nome_produto LIKE 'Produto 10';
SELECT * FROM Categoria WHERE nome_categoria = 'Games';
SELECT * FROM Entrega WHERE status_entrega = 'Entregue';
SELECT * FROM Pagamento WHERE status_pagamento = 'Pago';
SELECT * FROM Estoque WHERE quantidade < 10;
SELECT * FROM Pedido WHERE data_pedido = '2026-02-12';
SELECT * FROM Cliente WHERE endereco LIKE '%Recife%';
SELECT * FROM Produto WHERE preco BETWEEN 100 AND 500;
SELECT * FROM Funcionario WHERE cargo = 'Gerente';
SELECT * FROM Fornecedor WHERE nome_fornecedor LIKE '%Fornecedor 14%';

SELECT Cliente.nome, Pedido.valor_total
FROM Cliente
INNER JOIN Pedido
ON Cliente.id_cliente = Pedido.id_cliente;

SELECT Produto.nome_produto, Categoria.nome_categoria
FROM Produto
INNER JOIN Categoria
ON Produto.id_categoria = Categoria.id_categoria;

SELECT Produto.nome_produto, Fornecedor.nome_fornecedor
FROM Produto
INNER JOIN Fornecedor
ON Produto.id_fornecedor = Fornecedor.id_fornecedor;

SELECT Pedido.id_pedido, Cliente.nome
FROM Pedido
INNER JOIN Cliente
ON Pedido.id_cliente = Cliente.id_cliente;

SELECT Pedido.id_pedido, Funcionario.nome
FROM Pedido
INNER JOIN Funcionario
ON Pedido.id_funcionario = Funcionario.id_funcionario;

SELECT ItemPedido.quantidade, Produto.nome_produto
FROM ItemPedido
INNER JOIN Produto
ON ItemPedido.id_produto = Produto.id_produto;

SELECT Entrega.status_entrega, Pedido.id_pedido
FROM Entrega
INNER JOIN Pedido
ON Entrega.id_pedido = Pedido.id_pedido;

SELECT Pagamento.forma_pagamento, Pedido.valor_total
FROM Pagamento
INNER JOIN Pedido
ON Pagamento.id_pedido = Pedido.id_pedido;

SELECT Produto.nome_produto, Estoque.quantidade
FROM Produto
INNER JOIN Estoque
ON Produto.id_produto = Estoque.id_produto;

SELECT Cliente.nome, Pagamento.status_pagamento
FROM Cliente
INNER JOIN Pedido
ON Cliente.id_cliente = Pedido.id_cliente
INNER JOIN Pagamento
ON Pedido.id_pedido = Pagamento.id_pedido;

/*consultas de agregação*/
SELECT COUNT(*) FROM Cliente;
SELECT COUNT(*) FROM Produto;
SELECT COUNT(*) FROM Pedido;

SELECT SUM(valor_total) FROM Pedido;
SELECT SUM(preco) FROM Produto;
SELECT SUM(salario) FROM Funcionario;

SELECT AVG(preco) FROM Produto;
SELECT AVG(salario) FROM Funcionario;
SELECT AVG(valor_total) FROM Pedido;

UPDATE Produto SET preco = 4000 WHERE id_produto = 1;
UPDATE Produto SET preco = 200 WHERE id_produto = 2;
UPDATE Cliente SET telefone = '8198888-1111' WHERE id_cliente = 1;
UPDATE Funcionario SET salario = 3500 WHERE id_funcionario = 1;
UPDATE Estoque SET quantidade = 50 WHERE id_estoque = 1;
UPDATE Pedido SET valor_total = 5000 WHERE id_pedido = 1;
UPDATE Categoria SET nome_categoria = 'Periféricos' WHERE id_categoria = 5;
UPDATE Fornecedor SET telefone = '8197777-0000' WHERE id_fornecedor = 1;
UPDATE Pagamento SET status_pagamento = 'Pago' WHERE id_pagamento = 1;

DELETE FROM Entrega WHERE id_entrega = 10;
DELETE FROM Pagamento WHERE id_pagamento = 10;
DELETE FROM ItemPedido WHERE id_item = 10;
DELETE FROM Pedido WHERE id_pedido = 10;
DELETE FROM Estoque WHERE id_estoque = 10;
DELETE FROM Produto WHERE id_produto = 10;
DELETE FROM Categoria WHERE id_categoria = 10;
DELETE FROM Fornecedor WHERE id_fornecedor = 10;
DELETE FROM Funcionario WHERE id_funcionario = 10;
DELETE FROM Cliente WHERE id_cliente = 10;

rollback

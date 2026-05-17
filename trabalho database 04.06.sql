-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ecommerce
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Eletrônicos'),(2,'Games'),(3,'Acessórios'),(4,'Informática'),(5,'Periféricos'),(6,'Tablets'),(7,'TVs'),(8,'Áudio'),(9,'Vídeo'),(10,'Smart Home'),(11,'Monitores'),(12,'Impressoras'),(13,'Hardware'),(14,'Periféricos'),(15,'Cadeiras Gamer'),(16,'Consoles'),(17,'Jogos'),(18,'Peças de PC'),(19,'Gabinetes'),(20,'Coolers'),(21,'SSD'),(22,'HD Externo'),(23,'Memória RAM'),(24,'Placa de Vídeo'),(25,'Processadores'),(26,'Fontes'),(27,'Teclados'),(28,'Mouses'),(29,'Headsets'),(30,'Webcams'),(31,'Microfones'),(32,'Cabos'),(33,'Carregadores'),(34,'Power Bank'),(35,'Relógios Smart'),(36,'Casa Inteligente'),(37,'Segurança'),(38,'Automação'),(39,'Streaming'),(40,'Roteadores'),(41,'Modem'),(42,'Notebook'),(43,'Ultrabook'),(44,'Macbook'),(45,'Gaming PC'),(46,'Escritório'),(47,'Telefonia'),(48,'Gadgets'),(49,'Acessórios Gamer'),(50,'Tecnologia');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Cliente 1','111.111.111-01','cliente1@gmail.com','81999990001','Recife - PE'),(2,'Cliente 2','111.111.111-02','cliente2@gmail.com','81999990002','Olinda - PE'),(3,'Cliente 3','111.111.111-03','cliente3@gmail.com','81999990003','Paulista - PE'),(4,'Cliente 4','111.111.111-04','cliente4@gmail.com','81999990004','Recife - PE'),(5,'Cliente 5','111.111.111-05','cliente5@gmail.com','81999990005','Olinda - PE'),(6,'Cliente 6','111.111.111-06','cliente6@gmail.com','81999990006','Paulista - PE'),(7,'Cliente 7','111.111.111-07','cliente7@gmail.com','81999990007','Recife - PE'),(8,'Cliente 8','111.111.111-08','cliente8@gmail.com','81999990008','Olinda - PE'),(9,'Cliente 9','111.111.111-09','cliente9@gmail.com','81999990009','Paulista - PE'),(10,'Cliente 10','111.111.111-10','cliente10@gmail.com','81999990010','Recife - PE'),(11,'Cliente 11','111.111.111-11','cliente11@gmail.com','81999990011','Olinda - PE'),(12,'Cliente 12','111.111.111-12','cliente12@gmail.com','81999990012','Paulista - PE'),(13,'Cliente 13','111.111.111-13','cliente13@gmail.com','81999990013','Recife - PE'),(14,'Cliente 14','111.111.111-14','cliente14@gmail.com','81999990014','Olinda - PE'),(15,'Cliente 15','111.111.111-15','cliente15@gmail.com','81999990015','Paulista - PE'),(16,'Cliente 16','111.111.111-16','cliente16@gmail.com','81999990016','Recife - PE'),(17,'Cliente 17','111.111.111-17','cliente17@gmail.com','81999990017','Olinda - PE'),(18,'Cliente 18','111.111.111-18','cliente18@gmail.com','81999990018','Paulista - PE'),(19,'Cliente 19','111.111.111-19','cliente19@gmail.com','81999990019','Recife - PE'),(20,'Cliente 20','111.111.111-20','cliente20@gmail.com','81999990020','Olinda - PE'),(21,'Cliente 21','111.111.111-21','cliente21@gmail.com','81999990021','Paulista - PE'),(22,'Cliente 22','111.111.111-22','cliente22@gmail.com','81999990022','Recife - PE'),(23,'Cliente 23','111.111.111-23','cliente23@gmail.com','81999990023','Olinda - PE'),(24,'Cliente 24','111.111.111-24','cliente24@gmail.com','81999990024','Paulista - PE'),(25,'Cliente 25','111.111.111-25','cliente25@gmail.com','81999990025','Recife - PE'),(26,'Cliente 26','111.111.111-26','cliente26@gmail.com','81999990026','Olinda - PE'),(27,'Cliente 27','111.111.111-27','cliente27@gmail.com','81999990027','Paulista - PE'),(28,'Cliente 28','111.111.111-28','cliente28@gmail.com','81999990028','Recife - PE'),(29,'Cliente 29','111.111.111-29','cliente29@gmail.com','81999990029','Olinda - PE'),(30,'Cliente 30','111.111.111-30','cliente30@gmail.com','81999990030','Paulista - PE'),(31,'Cliente 31','111.111.111-31','cliente31@gmail.com','81999990031','Recife - PE'),(32,'Cliente 32','111.111.111-32','cliente32@gmail.com','81999990032','Olinda - PE'),(33,'Cliente 33','111.111.111-33','cliente33@gmail.com','81999990033','Paulista - PE'),(34,'Cliente 34','111.111.111-34','cliente34@gmail.com','81999990034','Recife - PE'),(35,'Cliente 35','111.111.111-35','cliente35@gmail.com','81999990035','Olinda - PE'),(36,'Cliente 36','111.111.111-36','cliente36@gmail.com','81999990036','Paulista - PE'),(37,'Cliente 37','111.111.111-37','cliente37@gmail.com','81999990037','Recife - PE'),(38,'Cliente 38','111.111.111-38','cliente38@gmail.com','81999990038','Olinda - PE'),(39,'Cliente 39','111.111.111-39','cliente39@gmail.com','81999990039','Paulista - PE'),(40,'Cliente 40','111.111.111-40','cliente40@gmail.com','81999990040','Recife - PE'),(41,'Cliente 41','111.111.111-41','cliente41@gmail.com','81999990041','Olinda - PE'),(42,'Cliente 42','111.111.111-42','cliente42@gmail.com','81999990042','Paulista - PE'),(43,'Cliente 43','111.111.111-43','cliente43@gmail.com','81999990043','Recife - PE'),(44,'Cliente 44','111.111.111-44','cliente44@gmail.com','81999990044','Olinda - PE'),(45,'Cliente 45','111.111.111-45','cliente45@gmail.com','81999990045','Paulista - PE'),(46,'Cliente 46','111.111.111-46','cliente46@gmail.com','81999990046','Recife - PE'),(47,'Cliente 47','111.111.111-47','cliente47@gmail.com','81999990047','Olinda - PE'),(48,'Cliente 48','111.111.111-48','cliente48@gmail.com','81999990048','Paulista - PE'),(49,'Cliente 49','111.111.111-49','cliente49@gmail.com','81999990049','Recife - PE'),(50,'Cliente 50','111.111.111-50','cliente50@gmail.com','81999990050','Olinda - PE');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id_entrega` int(11) NOT NULL AUTO_INCREMENT,
  `status_entrega` varchar(50) NOT NULL,
  `data_entrega` date NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_entrega`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `entrega_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
INSERT INTO `entrega` VALUES (1,'Enviado','2026-02-01',1),(2,'Em Transporte','2026-02-02',2),(3,'Preparando','2026-02-03',3),(4,'Entregue','2026-02-04',4),(5,'Em Transporte','2026-02-05',5),(6,'Preparando','2026-02-06',6),(7,'Entregue','2026-02-07',7),(8,'Em Transporte','2026-02-08',8),(9,'Preparando','2026-02-09',9),(10,'Entregue','2026-02-10',10),(11,'Em Transporte','2026-02-11',11),(12,'Preparando','2026-02-12',12),(13,'Entregue','2026-02-13',13),(14,'Em Transporte','2026-02-14',14),(15,'Preparando','2026-02-15',15),(16,'Entregue','2026-02-16',16),(17,'Em Transporte','2026-02-17',17),(18,'Preparando','2026-02-18',18),(19,'Entregue','2026-02-19',19),(20,'Em Transporte','2026-02-20',20),(21,'Preparando','2026-02-21',21),(22,'Entregue','2026-02-22',22),(23,'Em Transporte','2026-02-23',23),(24,'Preparando','2026-02-24',24),(25,'Entregue','2026-02-25',25),(26,'Em Transporte','2026-02-26',26),(27,'Preparando','2026-02-27',27),(28,'Entregue','2026-02-28',28),(29,'Em Transporte','2026-03-01',29),(30,'Preparando','2026-03-02',30),(31,'Entregue','2026-03-03',31),(32,'Em Transporte','2026-03-04',32),(33,'Preparando','2026-03-05',33),(34,'Entregue','2026-03-06',34),(35,'Em Transporte','2026-03-07',35),(36,'Preparando','2026-03-08',36),(37,'Entregue','2026-03-09',37),(38,'Em Transporte','2026-03-10',38),(39,'Preparando','2026-03-11',39),(40,'Entregue','2026-03-12',40),(41,'Em Transporte','2026-03-13',41),(42,'Preparando','2026-03-14',42),(43,'Entregue','2026-03-15',43),(44,'Em Transporte','2026-03-16',44),(45,'Preparando','2026-03-17',45),(46,'Entregue','2026-03-18',46),(47,'Em Transporte','2026-03-19',47),(48,'Preparando','2026-03-20',48),(49,'Entregue','2026-03-21',49),(50,'Em Transporte','2026-03-22',50);
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `id_estoque` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` int(11) NOT NULL,
  `id_produto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estoque`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `estoque_ibfk_1` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,50,1),(2,15,2),(3,20,3),(4,25,4),(5,30,5),(6,35,6),(7,40,7),(8,45,8),(9,50,9),(10,55,10),(11,60,11),(12,65,12),(13,70,13),(14,75,14),(15,80,15),(16,85,16),(17,90,17),(18,95,18),(19,100,19),(20,105,20),(21,110,21),(22,115,22),(23,120,23),(24,125,24),(25,130,25),(26,135,26),(27,140,27),(28,145,28),(29,150,29),(30,155,30),(31,160,31),(32,165,32),(33,170,33),(34,175,34),(35,180,35),(36,185,36),(37,190,37),(38,195,38),(39,200,39),(40,205,40),(41,210,41),(42,215,42),(43,220,43),(44,225,44),(45,230,45),(46,235,46),(47,240,47),(48,245,48),(49,250,49),(50,255,50);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fornecedor` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'Fornecedor 1','(81)97777-0000'),(2,'Fornecedor 2','81999990002'),(3,'Fornecedor 3','81999990003'),(4,'Fornecedor 4','81999990004'),(5,'Fornecedor 5','81999990005'),(6,'Fornecedor 6','81999990006'),(7,'Fornecedor 7','81999990007'),(8,'Fornecedor 8','81999990008'),(9,'Fornecedor 9','81999990009'),(10,'Fornecedor 10','81999990010'),(11,'Fornecedor 11','81999990011'),(12,'Fornecedor 12','81999990012'),(13,'Fornecedor 13','81999990013'),(14,'Fornecedor 14','81999990014'),(15,'Fornecedor 15','81999990015'),(16,'Fornecedor 16','81999990016'),(17,'Fornecedor 17','81999990017'),(18,'Fornecedor 18','81999990018'),(19,'Fornecedor 19','81999990019'),(20,'Fornecedor 20','81999990020'),(21,'Fornecedor 21','81999990021'),(22,'Fornecedor 22','81999990022'),(23,'Fornecedor 23','81999990023'),(24,'Fornecedor 24','81999990024'),(25,'Fornecedor 25','81999990025'),(26,'Fornecedor 26','81999990026'),(27,'Fornecedor 27','81999990027'),(28,'Fornecedor 28','81999990028'),(29,'Fornecedor 29','81999990029'),(30,'Fornecedor 30','81999990030'),(31,'Fornecedor 31','81999990031'),(32,'Fornecedor 32','81999990032'),(33,'Fornecedor 33','81999990033'),(34,'Fornecedor 34','81999990034'),(35,'Fornecedor 35','81999990035'),(36,'Fornecedor 36','81999990036'),(37,'Fornecedor 37','81999990037'),(38,'Fornecedor 38','81999990038'),(39,'Fornecedor 39','81999990039'),(40,'Fornecedor 40','81999990040'),(41,'Fornecedor 41','81999990041'),(42,'Fornecedor 42','81999990042'),(43,'Fornecedor 43','81999990043'),(44,'Fornecedor 44','81999990044'),(45,'Fornecedor 45','81999990045'),(46,'Fornecedor 46','81999990046'),(47,'Fornecedor 47','81999990047'),(48,'Fornecedor 48','81999990048'),(49,'Fornecedor 49','81999990049'),(50,'Fornecedor 50','81999990050');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Funcionario 1','Gerente',3500.00),(2,'Funcionario 2','Vendedor',2200.00),(3,'Funcionario 3','Estoquista',1800.00),(4,'Funcionario 4','Atendente',1900.00),(5,'Funcionario 5','Supervisor',3200.00),(6,'Funcionario 6','Gerente',3500.00),(7,'Funcionario 7','Vendedor',2200.00),(8,'Funcionario 8','Estoquista',1800.00),(9,'Funcionario 9','Atendente',1900.00),(10,'Funcionario 10','Supervisor',3200.00),(11,'Funcionario 11','Gerente',3500.00),(12,'Funcionario 12','Vendedor',2200.00),(13,'Funcionario 13','Estoquista',1800.00),(14,'Funcionario 14','Atendente',1900.00),(15,'Funcionario 15','Supervisor',3200.00),(16,'Funcionario 16','Gerente',3500.00),(17,'Funcionario 17','Vendedor',2200.00),(18,'Funcionario 18','Estoquista',1800.00),(19,'Funcionario 19','Atendente',1900.00),(20,'Funcionario 20','Supervisor',3200.00),(21,'Funcionario 21','Gerente',3500.00),(22,'Funcionario 22','Vendedor',2200.00),(23,'Funcionario 23','Estoquista',1800.00),(24,'Funcionario 24','Atendente',1900.00),(25,'Funcionario 25','Supervisor',3200.00),(26,'Funcionario 26','Gerente',3500.00),(27,'Funcionario 27','Vendedor',2200.00),(28,'Funcionario 28','Estoquista',1800.00),(29,'Funcionario 29','Atendente',1900.00),(30,'Funcionario 30','Supervisor',3200.00),(31,'Funcionario 31','Gerente',3500.00),(32,'Funcionario 32','Vendedor',2200.00),(33,'Funcionario 33','Estoquista',1800.00),(34,'Funcionario 34','Atendente',1900.00),(35,'Funcionario 35','Supervisor',3200.00),(36,'Funcionario 36','Gerente',3500.00),(37,'Funcionario 37','Vendedor',2200.00),(38,'Funcionario 38','Estoquista',1800.00),(39,'Funcionario 39','Atendente',1900.00),(40,'Funcionario 40','Supervisor',3200.00),(41,'Funcionario 41','Gerente',3500.00),(42,'Funcionario 42','Vendedor',2200.00),(43,'Funcionario 43','Estoquista',1800.00),(44,'Funcionario 44','Atendente',1900.00),(45,'Funcionario 45','Supervisor',3200.00),(46,'Funcionario 46','Gerente',3500.00),(47,'Funcionario 47','Vendedor',2200.00),(48,'Funcionario 48','Estoquista',1800.00),(49,'Funcionario 49','Atendente',1900.00),(50,'Funcionario 50','Supervisor',3200.00),(151,'Funcionario 1','Gerente',3500.00),(152,'Funcionario 2','Vendedor',2200.00),(153,'Funcionario 3','Estoquista',1800.00),(154,'Funcionario 4','Atendente',1900.00),(155,'Funcionario 5','Supervisor',3200.00),(156,'Funcionario 6','Gerente',3500.00),(157,'Funcionario 7','Vendedor',2200.00),(158,'Funcionario 8','Estoquista',1800.00),(159,'Funcionario 9','Atendente',1900.00),(160,'Funcionario 10','Supervisor',3200.00),(161,'Funcionario 11','Gerente',3500.00),(162,'Funcionario 12','Vendedor',2200.00),(163,'Funcionario 13','Estoquista',1800.00),(164,'Funcionario 14','Atendente',1900.00),(165,'Funcionario 15','Supervisor',3200.00),(166,'Funcionario 16','Gerente',3500.00),(167,'Funcionario 17','Vendedor',2200.00),(168,'Funcionario 18','Estoquista',1800.00),(169,'Funcionario 19','Atendente',1900.00),(170,'Funcionario 20','Supervisor',3200.00),(171,'Funcionario 21','Gerente',3500.00),(172,'Funcionario 22','Vendedor',2200.00),(173,'Funcionario 23','Estoquista',1800.00),(174,'Funcionario 24','Atendente',1900.00),(175,'Funcionario 25','Supervisor',3200.00),(176,'Funcionario 26','Gerente',3500.00),(177,'Funcionario 27','Vendedor',2200.00),(178,'Funcionario 28','Estoquista',1800.00),(179,'Funcionario 29','Atendente',1900.00),(180,'Funcionario 30','Supervisor',3200.00),(181,'Funcionario 31','Gerente',3500.00),(182,'Funcionario 32','Vendedor',2200.00),(183,'Funcionario 33','Estoquista',1800.00),(184,'Funcionario 34','Atendente',1900.00),(185,'Funcionario 35','Supervisor',3200.00),(186,'Funcionario 36','Gerente',3500.00),(187,'Funcionario 37','Vendedor',2200.00),(188,'Funcionario 38','Estoquista',1800.00),(189,'Funcionario 39','Atendente',1900.00),(190,'Funcionario 40','Supervisor',3200.00),(191,'Funcionario 41','Gerente',3500.00),(192,'Funcionario 42','Vendedor',2200.00),(193,'Funcionario 43','Estoquista',1800.00),(194,'Funcionario 44','Atendente',1900.00),(195,'Funcionario 45','Supervisor',3200.00),(196,'Funcionario 46','Gerente',3500.00),(197,'Funcionario 47','Vendedor',2200.00),(198,'Funcionario 48','Estoquista',1800.00),(199,'Funcionario 49','Atendente',1900.00),(200,'Funcionario 50','Supervisor',3200.00);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempedido`
--

DROP TABLE IF EXISTS `itempedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itempedido` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `quantidade` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_item`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`),
  CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempedido`
--

LOCK TABLES `itempedido` WRITE;
/*!40000 ALTER TABLE `itempedido` DISABLE KEYS */;
INSERT INTO `itempedido` VALUES (1,1,100.00,1,1),(2,2,240.00,2,2),(3,1,140.00,3,3),(4,3,480.00,4,4),(5,2,360.00,5,5),(6,1,200.00,6,6),(7,2,440.00,7,7),(8,1,240.00,8,8),(9,3,780.00,9,9),(10,2,560.00,10,10),(11,1,300.00,11,11),(12,2,640.00,12,12),(13,1,340.00,13,13),(14,3,1080.00,14,14),(15,2,760.00,15,15),(16,1,400.00,16,16),(17,2,840.00,17,17),(18,1,440.00,18,18),(19,3,1380.00,19,19),(20,2,960.00,20,20),(21,1,500.00,21,21),(22,2,1040.00,22,22),(23,1,540.00,23,23),(24,3,1680.00,24,24),(25,2,1160.00,25,25),(26,1,600.00,26,26),(27,2,1240.00,27,27),(28,1,640.00,28,28),(29,3,1980.00,29,29),(30,2,1360.00,30,30),(31,1,700.00,31,31),(32,2,1440.00,32,32),(33,1,740.00,33,33),(34,3,2280.00,34,34),(35,2,1560.00,35,35),(36,1,800.00,36,36),(37,2,1640.00,37,37),(38,1,840.00,38,38),(39,3,2580.00,39,39),(40,2,1760.00,40,40),(41,1,900.00,41,41),(42,2,1840.00,42,42),(43,1,940.00,43,43),(44,3,2880.00,44,44),(45,2,1960.00,45,45),(46,1,1000.00,46,46),(47,2,2040.00,47,47),(48,1,1040.00,48,48),(49,3,3180.00,49,49),(50,2,2160.00,50,50);
/*!40000 ALTER TABLE `itempedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `id_pagamento` int(11) NOT NULL AUTO_INCREMENT,
  `forma_pagamento` varchar(50) NOT NULL,
  `status_pagamento` varchar(50) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pagamento`),
  KEY `id_pedido` (`id_pedido`),
  CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedido` (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
INSERT INTO `pagamento` VALUES (1,'PIX','Pago',1),(2,'Cartão de Crédito','Pendente',2),(3,'Boleto','Pago',3),(4,'Débito','Processando',4),(5,'PIX','Pago',5),(6,'Cartão de Crédito','Pendente',6),(7,'Boleto','Pago',7),(8,'Débito','Processando',8),(9,'PIX','Pago',9),(10,'Cartão de Crédito','Pendente',10),(11,'Boleto','Pago',11),(12,'Débito','Processando',12),(13,'PIX','Pago',13),(14,'Cartão de Crédito','Pendente',14),(15,'Boleto','Pago',15),(16,'Débito','Processando',16),(17,'PIX','Pago',17),(18,'Cartão de Crédito','Pendente',18),(19,'Boleto','Pago',19),(20,'Débito','Processando',20),(21,'PIX','Pago',21),(22,'Cartão de Crédito','Pendente',22),(23,'Boleto','Pago',23),(24,'Débito','Processando',24),(25,'PIX','Pago',25),(26,'Cartão de Crédito','Pendente',26),(27,'Boleto','Pago',27),(28,'Débito','Processando',28),(29,'PIX','Pago',29),(30,'Cartão de Crédito','Pendente',30),(31,'Boleto','Pago',31),(32,'Débito','Processando',32),(33,'PIX','Pago',33),(34,'Cartão de Crédito','Pendente',34),(35,'Boleto','Pago',35),(36,'Débito','Processando',36),(37,'PIX','Pago',37),(38,'Cartão de Crédito','Pendente',38),(39,'Boleto','Pago',39),(40,'Débito','Processando',40),(41,'PIX','Pago',41),(42,'Cartão de Crédito','Pendente',42),(43,'Boleto','Pago',43),(44,'Débito','Processando',44),(45,'PIX','Pago',45),(46,'Cartão de Crédito','Pendente',46),(47,'Boleto','Pago',47),(48,'Débito','Processando',48),(49,'PIX','Pago',49),(50,'Cartão de Crédito','Pendente',50);
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `data_pedido` date NOT NULL,
  `valor_total` decimal(10,2) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_funcionario` (`id_funcionario`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2026-01-01',5000.00,1,1),(2,'2026-01-02',120.00,2,2),(3,'2026-01-03',140.00,3,3),(4,'2026-01-04',160.00,4,4),(5,'2026-01-05',180.00,5,5),(6,'2026-01-06',200.00,6,6),(7,'2026-01-07',220.00,7,7),(8,'2026-01-08',240.00,8,8),(9,'2026-01-09',260.00,9,9),(10,'2026-01-10',280.00,10,10),(11,'2026-01-11',300.00,11,11),(12,'2026-01-12',320.00,12,12),(13,'2026-01-13',340.00,13,13),(14,'2026-01-14',360.00,14,14),(15,'2026-01-15',380.00,15,15),(16,'2026-01-16',400.00,16,16),(17,'2026-01-17',420.00,17,17),(18,'2026-01-18',440.00,18,18),(19,'2026-01-19',460.00,19,19),(20,'2026-01-20',480.00,20,20),(21,'2026-01-21',500.00,21,21),(22,'2026-01-22',520.00,22,22),(23,'2026-01-23',540.00,23,23),(24,'2026-01-24',560.00,24,24),(25,'2026-01-25',580.00,25,25),(26,'2026-01-26',600.00,26,26),(27,'2026-01-27',620.00,27,27),(28,'2026-01-28',640.00,28,28),(29,'2026-01-29',660.00,29,29),(30,'2026-01-30',680.00,30,30),(31,'2026-01-31',700.00,31,31),(32,'2026-02-01',720.00,32,32),(33,'2026-02-02',740.00,33,33),(34,'2026-02-03',760.00,34,34),(35,'2026-02-04',780.00,35,35),(36,'2026-02-05',800.00,36,36),(37,'2026-02-06',820.00,37,37),(38,'2026-02-07',840.00,38,38),(39,'2026-02-08',860.00,39,39),(40,'2026-02-09',880.00,40,40),(41,'2026-02-10',900.00,41,41),(42,'2026-02-11',920.00,42,42),(43,'2026-02-12',940.00,43,43),(44,'2026-02-13',960.00,44,44),(45,'2026-02-14',980.00,45,45),(46,'2026-02-15',1000.00,46,46),(47,'2026-02-16',1020.00,47,47),(48,'2026-02-17',1040.00,48,48),(49,'2026-02-18',1060.00,49,49),(50,'2026-02-19',1080.00,50,50);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome_produto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_fornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_fornecedor` (`id_fornecedor`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Produto 1',4000.00,1,1),(2,'Produto 2',200.00,2,2),(3,'Produto 3',140.00,3,3),(4,'Produto 4',160.00,4,4),(5,'Produto 5',180.00,5,5),(6,'Produto 6',200.00,6,6),(7,'Produto 7',220.00,7,7),(8,'Produto 8',240.00,8,8),(9,'Produto 9',260.00,9,9),(10,'Produto 10',280.00,10,10),(11,'Produto 11',300.00,11,11),(12,'Produto 12',320.00,12,12),(13,'Produto 13',340.00,13,13),(14,'Produto 14',360.00,14,14),(15,'Produto 15',380.00,15,15),(16,'Produto 16',400.00,16,16),(17,'Produto 17',420.00,17,17),(18,'Produto 18',440.00,18,18),(19,'Produto 19',460.00,19,19),(20,'Produto 20',480.00,20,20),(21,'Produto 21',500.00,21,21),(22,'Produto 22',520.00,22,22),(23,'Produto 23',540.00,23,23),(24,'Produto 24',560.00,24,24),(25,'Produto 25',580.00,25,25),(26,'Produto 26',600.00,26,26),(27,'Produto 27',620.00,27,27),(28,'Produto 28',640.00,28,28),(29,'Produto 29',660.00,29,29),(30,'Produto 30',680.00,30,30),(31,'Produto 31',700.00,31,31),(32,'Produto 32',720.00,32,32),(33,'Produto 33',740.00,33,33),(34,'Produto 34',760.00,34,34),(35,'Produto 35',780.00,35,35),(36,'Produto 36',800.00,36,36),(37,'Produto 37',820.00,37,37),(38,'Produto 38',840.00,38,38),(39,'Produto 39',860.00,39,39),(40,'Produto 40',880.00,40,40),(41,'Produto 41',900.00,41,41),(42,'Produto 42',920.00,42,42),(43,'Produto 43',940.00,43,43),(44,'Produto 44',960.00,44,44),(45,'Produto 45',980.00,45,45),(46,'Produto 46',1000.00,46,46),(47,'Produto 47',1020.00,47,47),(48,'Produto 48',1040.00,48,48),(49,'Produto 49',1060.00,49,49),(50,'Produto 50',1080.00,50,50);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-17 11:31:57

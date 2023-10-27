-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: FAST_Marketplace
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categoria_Produto`
--

DROP TABLE IF EXISTS `Categoria_Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categoria_Produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categoria_Produto`
--

LOCK TABLES `Categoria_Produto` WRITE;
/*!40000 ALTER TABLE `Categoria_Produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categoria_Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Departamento`
--

DROP TABLE IF EXISTS `Departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Descricao` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Departamento`
--

LOCK TABLES `Departamento` WRITE;
/*!40000 ALTER TABLE `Departamento` DISABLE KEYS */;
INSERT INTO `Departamento` VALUES (1,'Vendas APP Mobile','Vendas de aplicativos mobile, por exemplo, Jogos para Celular'),(2,'Aulas de navegação na internet','Curso de aulas de navegação básica na internet para utilizar o Google, Instagram, WhatsApp e Facebook, por exemplo');
/*!40000 ALTER TABLE `Departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Formacao`
--

DROP TABLE IF EXISTS `Formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Formacao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Grau` varchar(80) NOT NULL,
  `Curso` varchar(120) NOT NULL,
  `Instituicao` varchar(120) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Formacao`
--

LOCK TABLES `Formacao` WRITE;
/*!40000 ALTER TABLE `Formacao` DISABLE KEYS */;
INSERT INTO `Formacao` VALUES (1,'Superior','Tecnologia da Informação','CESAR School'),(2,'Superior','Design','CESAR School');
/*!40000 ALTER TABLE `Formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funcao`
--

DROP TABLE IF EXISTS `Funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Funcao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Descricao` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funcao`
--

LOCK TABLES `Funcao` WRITE;
/*!40000 ALTER TABLE `Funcao` DISABLE KEYS */;
INSERT INTO `Funcao` VALUES (1,'Programador Frontend Junior','Responsável em desenvolver atividades técnicas, tais como criar componentes, alterar a estilização de telas'),(2,'Designer Junior','Responsável em desenvolver atividades de entendimento de produtos digitais e criar telas'),(3,'Programador Full Stack','Responsável em desenvolver atividades técnicas de Frontend e Backend, criar e editar componentes e APIs');
/*!40000 ALTER TABLE `Funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Funcao_Departamento`
--

DROP TABLE IF EXISTS `Funcao_Departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Funcao_Departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Funcao` int NOT NULL,
  `ID_Departamento` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Funcao` (`ID_Funcao`),
  KEY `ID_Departamento` (`ID_Departamento`),
  CONSTRAINT `Funcao_Departamento_ibfk_1` FOREIGN KEY (`ID_Funcao`) REFERENCES `Funcao` (`ID`),
  CONSTRAINT `Funcao_Departamento_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `Departamento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funcao_Departamento`
--

LOCK TABLES `Funcao_Departamento` WRITE;
/*!40000 ALTER TABLE `Funcao_Departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Funcao_Departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Loja`
--

DROP TABLE IF EXISTS `Loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Loja` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Rua` varchar(120) NOT NULL,
  `Bairro` varchar(120) NOT NULL,
  `Cidade` varchar(120) NOT NULL,
  `Numero` varchar(120) NOT NULL,
  `CEP` varchar(10) NOT NULL,
  `Complemento` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Loja`
--

LOCK TABLES `Loja` WRITE;
/*!40000 ALTER TABLE `Loja` DISABLE KEYS */;
INSERT INTO `Loja` VALUES (1,'Vendas de APP FAST LTD','Rua da Esperança','Bairro do Futuro','Cidade Tecnologica','123','123456-001',NULL),(2,'Cursos de Internet FAST Educação','Rua da Conhecimento','Bairro do Saber','Cidade dos Estudantes','456','777888-123','Sala A');
/*!40000 ALTER TABLE `Loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa`
--

DROP TABLE IF EXISTS `Pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pessoa` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Salario` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa`
--

LOCK TABLES `Pessoa` WRITE;
/*!40000 ALTER TABLE `Pessoa` DISABLE KEYS */;
INSERT INTO `Pessoa` VALUES (1,'João Maria','1980-01-01',150),(2,'Maria João','1980-02-02',150),(3,'Joaquim Severino Silva','1970-10-10',155);
/*!40000 ALTER TABLE `Pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa_Departamento`
--

DROP TABLE IF EXISTS `Pessoa_Departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pessoa_Departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int NOT NULL,
  `ID_Departamento` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Departamento` (`ID_Departamento`),
  CONSTRAINT `Pessoa_Departamento_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `Pessoa` (`ID`),
  CONSTRAINT `Pessoa_Departamento_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `Departamento` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa_Departamento`
--

LOCK TABLES `Pessoa_Departamento` WRITE;
/*!40000 ALTER TABLE `Pessoa_Departamento` DISABLE KEYS */;
INSERT INTO `Pessoa_Departamento` VALUES (1,3,1);
/*!40000 ALTER TABLE `Pessoa_Departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa_Formacao`
--

DROP TABLE IF EXISTS `Pessoa_Formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pessoa_Formacao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int NOT NULL,
  `ID_Formacao` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Formacao` (`ID_Formacao`),
  CONSTRAINT `Pessoa_Formacao_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `Pessoa` (`ID`),
  CONSTRAINT `Pessoa_Formacao_ibfk_2` FOREIGN KEY (`ID_Formacao`) REFERENCES `Formacao` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa_Formacao`
--

LOCK TABLES `Pessoa_Formacao` WRITE;
/*!40000 ALTER TABLE `Pessoa_Formacao` DISABLE KEYS */;
INSERT INTO `Pessoa_Formacao` VALUES (1,2,1),(2,1,2);
/*!40000 ALTER TABLE `Pessoa_Formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa_Funcao`
--

DROP TABLE IF EXISTS `Pessoa_Funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pessoa_Funcao` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int NOT NULL,
  `ID_Funcao` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Funcao` (`ID_Funcao`),
  CONSTRAINT `Pessoa_Funcao_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `Pessoa` (`ID`),
  CONSTRAINT `Pessoa_Funcao_ibfk_2` FOREIGN KEY (`ID_Funcao`) REFERENCES `Funcao` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa_Funcao`
--

LOCK TABLES `Pessoa_Funcao` WRITE;
/*!40000 ALTER TABLE `Pessoa_Funcao` DISABLE KEYS */;
INSERT INTO `Pessoa_Funcao` VALUES (1,1,2);
/*!40000 ALTER TABLE `Pessoa_Funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pessoa_Loja`
--

DROP TABLE IF EXISTS `Pessoa_Loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pessoa_Loja` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Pessoa` int NOT NULL,
  `ID_Loja` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Pessoa` (`ID_Pessoa`),
  KEY `ID_Loja` (`ID_Loja`),
  CONSTRAINT `Pessoa_Loja_ibfk_1` FOREIGN KEY (`ID_Pessoa`) REFERENCES `Pessoa` (`ID`),
  CONSTRAINT `Pessoa_Loja_ibfk_2` FOREIGN KEY (`ID_Loja`) REFERENCES `Loja` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pessoa_Loja`
--

LOCK TABLES `Pessoa_Loja` WRITE;
/*!40000 ALTER TABLE `Pessoa_Loja` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pessoa_Loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produto`
--

DROP TABLE IF EXISTS `Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(120) NOT NULL,
  `Valor` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto`
--

LOCK TABLES `Produto` WRITE;
/*!40000 ALTER TABLE `Produto` DISABLE KEYS */;
INSERT INTO `Produto` VALUES (1,'Edição de Fotos - 10 fotos',800),(2,'Blogs com Wordpress com até 3 páginas',3000),(3,'Mentoria em Frontend - 3 aulas de 1h cada',900),(4,'Edição de Fotos - 11 fotos',900);
/*!40000 ALTER TABLE `Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produto_Categoria_Produto`
--

DROP TABLE IF EXISTS `Produto_Categoria_Produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto_Categoria_Produto` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Produto` int NOT NULL,
  `ID_Categoria_Produto` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Produto` (`ID_Produto`),
  KEY `ID_Categoria_Produto` (`ID_Categoria_Produto`),
  CONSTRAINT `Produto_Categoria_Produto_ibfk_1` FOREIGN KEY (`ID_Produto`) REFERENCES `Produto` (`ID`),
  CONSTRAINT `Produto_Categoria_Produto_ibfk_2` FOREIGN KEY (`ID_Categoria_Produto`) REFERENCES `Categoria_Produto` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto_Categoria_Produto`
--

LOCK TABLES `Produto_Categoria_Produto` WRITE;
/*!40000 ALTER TABLE `Produto_Categoria_Produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Produto_Categoria_Produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produto_Departamento`
--

DROP TABLE IF EXISTS `Produto_Departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Produto_Departamento` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ID_Produto` int NOT NULL,
  `ID_Departamento` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Produto` (`ID_Produto`),
  KEY `ID_Departamento` (`ID_Departamento`),
  CONSTRAINT `Produto_Departamento_ibfk_1` FOREIGN KEY (`ID_Produto`) REFERENCES `Produto` (`ID`),
  CONSTRAINT `Produto_Departamento_ibfk_2` FOREIGN KEY (`ID_Departamento`) REFERENCES `Departamento` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produto_Departamento`
--

LOCK TABLES `Produto_Departamento` WRITE;
/*!40000 ALTER TABLE `Produto_Departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `Produto_Departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'FAST_Marketplace'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-26 22:03:33

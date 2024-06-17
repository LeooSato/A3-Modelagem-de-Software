-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: bibliotecacomunitaria
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `autenticacao`
--

DROP TABLE IF EXISTS `autenticacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autenticacao` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `senha` varchar(255) DEFAULT NULL,
  `tipoUsuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autenticacao`
--

LOCK TABLES `autenticacao` WRITE;
/*!40000 ALTER TABLE `autenticacao` DISABLE KEYS */;
INSERT INTO `autenticacao` VALUES (1,'password123','Member'),(2,'password456','Member'),(3,'password789','Member'),(4,'password101','Member'),(5,'password102','Member'),(6,'password103','Member'),(7,'password104','Member'),(8,'password105','Member'),(9,'password106','Member'),(10,'password107','Member'),(11,'password108','Member'),(12,'password109','Member'),(13,'password110','Member'),(14,'password111','Member'),(15,'password112','Member'),(16,'password113','Member'),(17,'password114','Member'),(18,'password115','Member'),(19,'password116','Member'),(20,'password117','Member'),(21,'password118','Member'),(22,'password119','Member'),(23,'password120','Member'),(24,'password121','Member'),(25,'password122','Member'),(26,'password123','Member'),(27,'password124','Member'),(28,'password125','Member'),(29,'password126','Member'),(30,'password127','Member');
/*!40000 ALTER TABLE `autenticacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprestimo`
--

DROP TABLE IF EXISTS `emprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprestimo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idLivro` int DEFAULT NULL,
  `idMembro` int DEFAULT NULL,
  `dataEmprestimo` date DEFAULT NULL,
  `dataDevolucao` date DEFAULT NULL,
  `statusDevolucao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idLivro` (`idLivro`),
  KEY `idMembro` (`idMembro`),
  CONSTRAINT `emprestimo_ibfk_1` FOREIGN KEY (`idLivro`) REFERENCES `livro` (`id`),
  CONSTRAINT `emprestimo_ibfk_2` FOREIGN KEY (`idMembro`) REFERENCES `membro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprestimo`
--

LOCK TABLES `emprestimo` WRITE;
/*!40000 ALTER TABLE `emprestimo` DISABLE KEYS */;
INSERT INTO `emprestimo` VALUES (1,1,1,'2024-06-01','2024-06-15','Returned'),(2,2,2,'2024-06-02','2024-06-16','Returned'),(3,3,3,'2024-06-03','2024-06-17','Returned'),(4,4,4,'2024-06-04','2024-06-18','Overdue'),(5,5,5,'2024-06-05','2024-06-19','Returned'),(6,6,6,'2024-06-06','2024-06-20','Returned'),(7,7,7,'2024-06-07','2024-06-21','Overdue'),(8,8,8,'2024-06-08','2024-06-22','Returned'),(9,9,9,'2024-06-09','2024-06-23','Returned'),(10,10,10,'2024-06-10','2024-06-24','Returned'),(11,11,11,'2024-06-11','2024-06-25','Returned'),(12,12,12,'2024-06-12','2024-06-26','Overdue'),(13,13,13,'2024-06-13','2024-06-27','Returned'),(14,14,14,'2024-06-14','2024-06-28','Returned'),(15,15,15,'2024-06-15','2024-06-29','Returned'),(16,16,16,'2024-06-16','2024-06-30','Overdue'),(17,17,17,'2024-06-17','2024-07-01','Returned'),(18,18,18,'2024-06-18','2024-07-02','Returned'),(19,19,19,'2024-06-19','2024-07-03','Returned'),(20,20,20,'2024-06-20','2024-07-04','Returned'),(21,21,21,'2024-06-21','2024-07-05','Returned'),(22,22,22,'2024-06-22','2024-07-06','Overdue'),(23,23,23,'2024-06-23','2024-07-07','Returned'),(24,24,24,'2024-06-24','2024-07-08','Returned'),(25,25,25,'2024-06-25','2024-07-09','Returned'),(26,26,26,'2024-06-26','2024-07-10','Returned'),(27,27,27,'2024-06-27','2024-07-11','Overdue'),(28,28,28,'2024-06-28','2024-07-12','Returned'),(29,29,29,'2024-06-29','2024-07-13','Returned'),(30,30,30,'2024-06-30','2024-07-14','Returned');
/*!40000 ALTER TABLE `emprestimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `anoPublicacao` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'The Great Gatsby','F. Scott Fitzgerald','Fiction',1925,'Available'),(2,'To Kill a Mockingbird','Harper Lee','Fiction',1960,'Available'),(3,'1984','George Orwell','Dystopian',1949,'Available'),(4,'Pride and Prejudice','Jane Austen','Romance',1813,'Available'),(5,'The Catcher in the Rye','J.D. Salinger','Fiction',1951,'Available'),(6,'Moby Dick','Herman Melville','Adventure',1851,'Available'),(7,'War and Peace','Leo Tolstoy','Historical',1869,'Available'),(8,'The Odyssey','Homer','Epic',-800,'Available'),(9,'Crime and Punishment','Fyodor Dostoevsky','Psychological',1866,'Available'),(10,'The Brothers Karamazov','Fyodor Dostoevsky','Philosophical',1880,'Available'),(11,'Anna Karenina','Leo Tolstoy','Romance',1877,'Available'),(12,'The Hobbit','J.R.R. Tolkien','Fantasy',1937,'Available'),(13,'Brave New World','Aldous Huxley','Dystopian',1932,'Available'),(14,'The Divine Comedy','Dante Alighieri','Epic',1320,'Available'),(15,'Les Misérables','Victor Hugo','Historical',1862,'Available'),(16,'Ulysses','James Joyce','Modernist',1922,'Available'),(17,'The Iliad','Homer','Epic',-750,'Available'),(18,'Jane Eyre','Charlotte Brontë','Romance',1847,'Available'),(19,'The Grapes of Wrath','John Steinbeck','Historical',1939,'Available'),(20,'One Hundred Years of Solitude','Gabriel García Márquez','Magical Realism',1967,'Available'),(21,'The Sound and the Fury','William Faulkner','Modernist',1929,'Available'),(22,'Catch-22','Joseph Heller','Satire',1961,'Available'),(23,'The Old Man and the Sea','Ernest Hemingway','Fiction',1952,'Available'),(24,'The Scarlet Letter','Nathaniel Hawthorne','Historical',1850,'Available'),(25,'Wuthering Heights','Emily Brontë','Romance',1847,'Available'),(26,'The Picture of Dorian Gray','Oscar Wilde','Philosophical',1890,'Available'),(27,'The Lord of the Rings','J.R.R. Tolkien','Fantasy',1954,'Available'),(28,'Don Quixote','Miguel de Cervantes','Adventure',1605,'Available'),(29,'Fahrenheit 451','Ray Bradbury','Dystopian',1953,'Available'),(30,'Madame Bovary','Gustave Flaubert','Realist',1857,'Available');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membro`
--

DROP TABLE IF EXISTS `membro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membro`
--

LOCK TABLES `membro` WRITE;
/*!40000 ALTER TABLE `membro` DISABLE KEYS */;
INSERT INTO `membro` VALUES (1,'John Doe','john.doe@example.com','1234567890'),(2,'Jane Smith','jane.smith@example.com','0987654321'),(3,'Robert Brown','robert.brown@example.com','1122334455'),(4,'Emily Davis','emily.davis@example.com','2233445566'),(5,'Michael Wilson','michael.wilson@example.com','3344556677'),(6,'Sarah Miller','sarah.miller@example.com','4455667788'),(7,'David Moore','david.moore@example.com','5566778899'),(8,'Laura Taylor','laura.taylor@example.com','6677889900'),(9,'Daniel Anderson','daniel.anderson@example.com','7788990011'),(10,'Jessica Thomas','jessica.thomas@example.com','8899001122'),(11,'James Jackson','james.jackson@example.com','9900112233'),(12,'Patricia White','patricia.white@example.com','1010101010'),(13,'Charles Harris','charles.harris@example.com','2020202020'),(14,'Linda Martin','linda.martin@example.com','3030303030'),(15,'Christopher Thompson','christopher.thompson@example.com','4040404040'),(16,'Mary Garcia','mary.garcia@example.com','5050505050'),(17,'Mark Martinez','mark.martinez@example.com','6060606060'),(18,'Elizabeth Robinson','elizabeth.robinson@example.com','7070707070'),(19,'Paul Clark','paul.clark@example.com','8080808080'),(20,'Jennifer Rodriguez','jennifer.rodriguez@example.com','9090909090'),(21,'Thomas Lewis','thomas.lewis@example.com','1111111111'),(22,'Margaret Lee','margaret.lee@example.com','2222222222'),(23,'Steven Walker','steven.walker@example.com','3333333333'),(24,'Barbara Hall','barbara.hall@example.com','4444444444'),(25,'Joseph Allen','joseph.allen@example.com','5555555555'),(26,'Susan Young','susan.young@example.com','6666666666'),(27,'Andrew King','andrew.king@example.com','7777777777'),(28,'Nancy Wright','nancy.wright@example.com','8888888888'),(29,'Brian Scott','brian.scott@example.com','9999999999'),(30,'Karen Green','karen.green@example.com','0000000000');
/*!40000 ALTER TABLE `membro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idLivro` int DEFAULT NULL,
  `idMembro` int DEFAULT NULL,
  `dataReserva` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idLivro` (`idLivro`),
  KEY `idMembro` (`idMembro`),
  CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`idLivro`) REFERENCES `livro` (`id`),
  CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`idMembro`) REFERENCES `membro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,1,1,'2024-06-01','Completed'),(2,2,2,'2024-06-02','Completed'),(3,3,3,'2024-06-03','Completed'),(4,4,4,'2024-06-04','Pending'),(5,5,5,'2024-06-05','Completed'),(6,6,6,'2024-06-06','Completed'),(7,7,7,'2024-06-07','Pending'),(8,8,8,'2024-06-08','Completed'),(9,9,9,'2024-06-09','Completed'),(10,10,10,'2024-06-10','Completed'),(11,11,11,'2024-06-11','Completed'),(12,12,12,'2024-06-12','Pending'),(13,13,13,'2024-06-13','Completed'),(14,14,14,'2024-06-14','Completed'),(15,15,15,'2024-06-15','Completed'),(16,16,16,'2024-06-16','Pending'),(17,17,17,'2024-06-17','Completed'),(18,18,18,'2024-06-18','Completed'),(19,19,19,'2024-06-19','Completed'),(20,20,20,'2024-06-20','Completed'),(21,21,21,'2024-06-21','Completed'),(22,22,22,'2024-06-22','Pending'),(23,23,23,'2024-06-23','Completed'),(24,24,24,'2024-06-24','Completed'),(25,25,25,'2024-06-25','Completed'),(26,26,26,'2024-06-26','Completed'),(27,27,27,'2024-06-27','Pending'),(28,28,28,'2024-06-28','Completed'),(29,29,29,'2024-06-29','Completed'),(30,30,30,'2024-06-30','Completed');
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 21:45:42

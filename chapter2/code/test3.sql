-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: test3
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `c_id` int NOT NULL,
  `cname` varchar(16) DEFAULT NULL,
  `credits` tinyint DEFAULT NULL,
  `ct_id` int DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `授课教师编号` (`ct_id`),
  CONSTRAINT `授课教师编号` FOREIGN KEY (`ct_id`) REFERENCES `teachers` (`tch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
INSERT INTO `courses` VALUES (1001,'数据库原理与设计',3,101),(1002,'Android开发基础',2,102),(1003,'Java开发基础',2,102),(1004,'深度学习基础',2,103),(1005,'数字逻辑',4,104),(1006,'web实战开发',2,105),(1007,'mysql应用与设计',2,105),(1008,'面向对象原理与设计',4,106);
UNLOCK TABLES;

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `records` (
  `rstu_id` int DEFAULT NULL,
  `rc_id` int DEFAULT NULL,
  `grade` tinyint DEFAULT NULL,
  KEY `选课学生编号` (`rstu_id`),
  KEY `课程编号` (`rc_id`),
  CONSTRAINT `课程编号` FOREIGN KEY (`rc_id`) REFERENCES `courses` (`c_id`),
  CONSTRAINT `选课学生编号` FOREIGN KEY (`rstu_id`) REFERENCES `students` (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `records`
--

LOCK TABLES `records` WRITE;
INSERT INTO `records` VALUES (10001,1001,92),(10002,1001,98),(10003,1001,86),(10004,1001,91),(10005,1001,64),(10006,1001,82),(10007,1001,77),(10008,1001,73),(10009,1001,95),(10010,1001,53),(10011,1001,88),(10012,1001,71),(10013,1001,69),(10002,1002,53),(10004,1002,67),(10005,1002,84),(10007,1002,79),(10010,1002,58),(10011,1002,99),(10012,1002,92),(10013,1002,82),(10001,1003,92),(10004,1003,85),(10008,1003,81),(10012,1003,65),(10013,1003,47),(10002,1004,100),(10003,1004,87),(10005,1004,92),(10006,1004,98),(10007,1004,86),(10008,1004,91),(10009,1004,64),(10010,1004,82),(10011,1004,77),(10012,1004,73),(10013,1004,95),(10001,1005,53),(10002,1005,88),(10003,1005,71),(10004,1005,69),(10005,1005,92),(10006,1005,98),(10007,1005,86),(10008,1005,91),(10009,1005,64),(10010,1005,82),(10011,1005,77),(10012,1005,73),(10013,1005,95),(10001,1006,93),(10007,1006,98),(10001,1007,91),(10004,1007,89),(10013,1007,93),(10001,1008,88),(10002,1008,71),(10003,1008,69),(10004,1008,92),(10005,1008,98),(10006,1008,86),(10007,1008,91),(10008,1008,64),(10009,1008,82),(10010,1008,97),(10011,1008,73),(10012,1008,95),(10013,1008,53);
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `stu_id` int NOT NULL,
  `sname` varchar(8) DEFAULT NULL,
  `sgender` char(1) DEFAULT NULL,
  `sage` tinyint DEFAULT NULL,
  `sclass` tinyint DEFAULT NULL,
  `smajor` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
INSERT INTO `students` VALUES (10001,'小白','女',19,7,'计算机'),(10002,'小黑','男',20,6,'电信'),(10003,'小李','男',20,1,'电信'),(10004,'小宋','女',18,1,'机电'),(10005,'小江','女',19,12,'计算机'),(10006,'小原','女',19,12,'光电'),(10007,'小杨','男',18,7,'自动化'),(10008,'小张','男',18,5,'自动化'),(10009,'小郑','女',20,11,'光电'),(10010,'小漆','女',19,7,'经管'),(10011,'小唐','男',19,2,'计算机'),(10012,'小王','男',21,9,'电信'),(10013,'小刘','女',19,9,'计算机');
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `tch_id` int NOT NULL,
  `tname` varchar(8) DEFAULT NULL,
  `tgender` char(1) DEFAULT NULL,
  `tage` tinyint DEFAULT NULL,
  PRIMARY KEY (`tch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
INSERT INTO `teachers` VALUES (101,'小李','女',31),(102,'小宋','男',46),(103,'小黑','女',33),(104,'小唐','男',42),(105,'小江','男',51),(106,'小白','女',27);
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-08 16:25:22

-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(200) NOT NULL,
  `notice_content` varchar(10000) NOT NULL,
  `user_id` varchar(16) NOT NULL,
  `notice_bold` int NOT NULL DEFAULT '0',
  `notice_writedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (4,'','','관리자',0,'2021-07-21 18:17:27');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `order_size` varchar(10) NOT NULL,
  `detail_price` int NOT NULL,
  `order_color` varchar(10) NOT NULL,
  `order_qty` int NOT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (12,'20210718_509522',9,'테스트45','XL',24242,'하양',1),(13,'20210718_509522',1,'무트 린넨 와이드 세트','XL',24242,'화이트',1),(14,'20210718_509522',15,'테스트D드라이브','XL',5555,'블루화이트',1),(15,'20210718_163062',22,'테스트D드라이브','XL',24242,'블루화이트',1);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(300) NOT NULL,
  `product_price` varchar(30) NOT NULL,
  `product_category` varchar(10) NOT NULL,
  `product_size` varchar(10) NOT NULL,
  `product_color` varchar(10) NOT NULL,
  `product_inventory` int NOT NULL,
  `product_comment` longtext NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (23,'테스트1','43535','Outer','M','화이트',24,'yhjffj'),(26,'ss','ss','Outer','ss','ss',22,'ss'),(27,'dsad','21212','Pants','dasd','dsa',1,'dsdsd'),(28,'dd','222','Outer','dd','dd',11,'sasasa');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_img`
--

DROP TABLE IF EXISTS `product_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_img` (
  `product_id` int DEFAULT NULL,
  `image_id` int NOT NULL DEFAULT '1',
  `file_name` varchar(100) NOT NULL,
  `upload_path` varchar(200) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `product_id_idx` (`product_id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_img`
--

LOCK TABLES `product_img` WRITE;
/*!40000 ALTER TABLE `product_img` DISABLE KEYS */;
INSERT INTO `product_img` VALUES (3,1,'safwf.JPG','2021\\07\\10','04c6df33-2ec3-4e5e-98d3-5d4606d00d33'),(28,3,'test2.JPG','2021\\07\\21','08209429-ce92-4147-b3f2-71799acab703'),(28,4,'KakaoTalk_20210617_155939042.png','2021\\07\\21','12a28f43-97b6-46b4-9acf-091e8c69d549'),(27,4,'화면 캡처 2021-06-11 130044.jpg','2021\\07\\21','1bc7be7f-895c-423d-a7ed-31c9ad0ae98d'),(7,1,'sfwf.JPG','2021\\07\\10','25385687-208f-4567-ac06-2d4643af78f5'),(8,2,'Acc.JPG','2021\\07\\10','266fc399-4da4-4871-a451-34d3349d89d4'),(28,1,'화면 캡처 2021-06-11 130044.jpg','2021\\07\\21','2dca7c1a-d3da-4c42-853e-3b270ac9c691'),(4,1,'wfwfw.JPG','2021\\07\\10','31d8065e-507e-4bef-84d4-27b5eabfce7a'),(3,2,'Shirts.JPG','2021\\07\\10','3c0d0ee3-b140-46e7-9ad3-4d8ece55d0f2'),(12,2,'Pants.JPG','2021\\07\\10','47275258-48b3-4905-a2c0-2c1bf595f4fd'),(28,2,'1.jpg','2021\\07\\21','5758eccf-e6da-47fb-bcb5-bfc94da7434c'),(27,3,'Animation.gif','2021\\07\\21','590c5cc7-0a30-4ec3-8495-443e78bb3b8e'),(1,2,'Outer.JPG','2021\\07\\10','601d6a32-2d20-4b77-a842-654f4cdf3b56'),(27,2,'1.jpg','2021\\07\\21','6082a2a1-9ba7-4c5b-9179-9b255d0e66a1'),(2,1,'img02.JPG','2021\\07\\10','64f02763-0070-4022-a6d3-7d3b7a8ea0d3'),(8,1,'safwf.JPG','2021\\07\\10','77397a14-bc52-4d52-a2bf-c474a873c6af'),(2,2,'Outer.JPG','2021\\07\\10','7974da64-4a08-473a-b184-bc8d27c9b985'),(5,1,'img01.JPG','2021\\07\\10','7c4f7329-1e3c-46df-8409-5e5a86d314c5'),(10,2,'Shirts.JPG','2021\\07\\10','89776f98-a25f-404a-8924-6699d5a8770a'),(9,1,'wfwfw.JPG','2021\\07\\10','8b105bd9-490d-40c1-8e34-4afd71aeede1'),(10,1,'img.png','2021\\07\\10','a679a19e-0022-4da6-9476-352d27f0b808'),(9,2,'Suit.JPG','2021\\07\\10','a8fb3cdc-4411-4f74-99cf-82bdce3e5f2b'),(11,2,'Shirts.JPG','2021\\07\\10','af9ba242-45ea-4615-aa29-9adc3842b5b7'),(6,1,'img03.JPG','2021\\07\\10','b115962a-f7ec-4871-bbf3-89dbe925879f'),(6,2,'Outer.JPG','2021\\07\\10','b41fdc56-e039-4f88-95f7-c462413cd553'),(1,1,'fb821c5bb417372d9a1ee92ef16ab800.jpg','2021\\07\\10','b7458e7b-15ee-4a98-a683-54ac67587ffc'),(4,2,'TOP.JPG','2021\\07\\10','be2352a1-c837-4a52-9329-eae12d0db31c'),(5,2,'Suit.JPG','2021\\07\\10','d0303da5-b4b5-439c-b817-17d011ce9640'),(7,2,'Shoes.JPG','2021\\07\\10','e04e4159-8946-48d2-a627-64cf58b3efaf'),(27,1,'test2.JPG','2021\\07\\21','e4f0ea47-16bf-461d-9ee4-482451de620a'),(11,1,'이미지05.png','2021\\07\\10','f3f33aa3-c96b-4985-82b2-7d3eae5aa170'),(12,1,'캡wfwf처.JPG','2021\\07\\10','f6cce208-b2e9-4379-b775-9e44e8a689dc');
/*!40000 ALTER TABLE `product_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qna`
--

DROP TABLE IF EXISTS `qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qna` (
  `bno` int NOT NULL AUTO_INCREMENT,
  `qna_title` varchar(200) NOT NULL,
  `qna_category` varchar(15) NOT NULL,
  `user_id` varchar(16) NOT NULL,
  `qna_contents` varchar(10000) NOT NULL,
  `qna_writedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qna`
--

LOCK TABLES `qna` WRITE;
/*!40000 ALTER TABLE `qna` DISABLE KEYS */;
INSERT INTO `qna` VALUES (1,'aaaaaaaa','ddd','1','aaaaaaaaaaaaaaaaaaa','2021-07-17 13:20:59');
/*!40000 ALTER TABLE `qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `rno` int NOT NULL AUTO_INCREMENT,
  `bno` int NOT NULL,
  `reply_content` varchar(1000) NOT NULL,
  `user_id` varchar(16) NOT NULL,
  `reply_writedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rno`,`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (1,1,'1','관리자','2021-07-19 07:12:25'),(3,1,'aaaaaaaaaaaaaaaaaa','ㅇㄴㅇㅁㄴ','2021-07-19 07:12:33');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `review_title` varchar(100) NOT NULL,
  `product_name` varchar(15) NOT NULL,
  `product_img` varchar(45) DEFAULT NULL,
  `review_board` varchar(300) NOT NULL,
  `user_id` varchar(16) NOT NULL,
  `review_writedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (8,'','반팔티셔츠','test2.JPG','','관리자','2021-07-21 14:54:54'),(9,'','','','','비회원','2021-07-21 18:19:37'),(10,'','','','','비회원','2021-07-21 18:19:40'),(11,'','','','','비회원','2021-07-21 18:19:42'),(12,'','','','','관리자','2021-07-21 18:41:54'),(14,'dsadas','sdasd','','asdasdasdas','관리자','2021-07-22 07:25:58');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(16) NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `cart_productsize` varchar(10) NOT NULL,
  `cart_productColor` varchar(10) DEFAULT NULL,
  `cart_productOption` varchar(10) DEFAULT NULL,
  `cart_price` int NOT NULL,
  `cart_qty` int NOT NULL,
  `cart_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `password_check` varchar(16) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `address_num` varchar(100) NOT NULL,
  `address` varchar(300) NOT NULL,
  `address_detail` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adminck` int NOT NULL DEFAULT '0',
  `account_name` varchar(30) DEFAULT NULL,
  `account_bank` varchar(30) DEFAULT NULL,
  `account_num` varchar(30) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('test','test','test','관리자','test','test','test','010-1111-1111','test@naver.com',1,'test','test','test','2021-06-29 04:23:28'),('test1','test1','test1','첫번째회원','05082','서울 광진구 뚝섬로22가길 1 (자양동)','05082','01011111111','1@naver.com',0,'','국민','','2021-06-29 04:23:28'),('test10','test10','test10','열번째회원','18439','경기 화성시 10용사1길 23 (반송동)','18439','01000000000','10@naver.com',0,'','국민','','2021-06-29 04:23:28'),('test2','test2','test2','두번째회원','46719','부산 강서구 대저동서로212번길 10 (대저2동)','test2','01022222222','test2@naver.com',0,'test2','국민','test2','2021-06-29 04:23:28'),('test3','test3','test3','세번째회원','14754','경기 부천시 경인로324번길 7 (소사본동)','3','01033333333','3@naver.com',0,'','국민','','2021-06-29 04:23:28'),('test4','test4','test4','네번째회원','06198','서울 강남구 선릉로76길 4 (대치동)','06198','01044444444','4@naver.com',0,'','국민','','2021-06-29 04:23:28'),('test5','test5','test5','다섯번째회원','06197','서울 강남구 역삼로65길 5 (대치동)','06197','01066666666','6@naver.com',0,'','국민','','2021-06-29 04:23:28'),('test7','test7','test7','일곱번째회원','01616','서울 노원구 동일로231길 13-14 (상계동)','01616','01077777777','7@naver.com',0,'','국민','','2021-06-29 04:23:28');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_order` (
  `order_id` varchar(50) NOT NULL,
  `user_id` varchar(16) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `order_phone` varchar(20) NOT NULL,
  `order_address` varchar(300) NOT NULL,
  `order_address_detail` varchar(100) NOT NULL,
  `order_address_num` varchar(100) NOT NULL,
  `order_price` int NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_order`
--

LOCK TABLES `user_order` WRITE;
/*!40000 ALTER TABLE `user_order` DISABLE KEYS */;
INSERT INTO `user_order` VALUES ('20210718_163062','관리자','관리자','010-1234-1234','관리자주소','관리자상세주소','12345',24242,'2021-07-18 07:49:03'),('20210718_509522','관리자','관리자','010-1234-1234','관리자주소','관리자상세주소','12345',54039,'2021-07-18 07:45:47');
/*!40000 ALTER TABLE `user_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-20 13:45:18


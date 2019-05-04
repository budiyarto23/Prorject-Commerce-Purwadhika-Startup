-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: commerce
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `image` varchar(90) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `kuantiti` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cartlist`
--

DROP TABLE IF EXISTS `cartlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cartlist` (
  `idproduct` int(11) NOT NULL,
  `idcart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartlist`
--

LOCK TABLES `cartlist` WRITE;
/*!40000 ALTER TABLE `cartlist` DISABLE KEYS */;
INSERT INTO `cartlist` VALUES (1,1),(2,2),(2,2);
/*!40000 ALTER TABLE `cartlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `quantity` int(5) NOT NULL,
  `total_price` int(22) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (2,30,'FLOWING BOMBER JACKET',1,100000),(3,30,'THE DEVIL WEARS PRADA',2,344444),(4,30,'Kaos',2,11111);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (16,'Jaket');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daftarorder`
--

DROP TABLE IF EXISTS `daftarorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `daftarorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) NOT NULL,
  `date` date NOT NULL,
  `totalprice` int(11) NOT NULL,
  `totalquantity` int(11) NOT NULL,
  `invoice` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daftarorder`
--

LOCK TABLES `daftarorder` WRITE;
/*!40000 ALTER TABLE `daftarorder` DISABLE KEYS */;
INSERT INTO `daftarorder` VALUES (165,'budiyarto','2019-03-14',20000000,1,'2019314152410','Confirm','ahmadbudiyarto@gmail.com'),(166,'budiyarto','2019-03-14',18000000,1,'2019314152837','Confirm','ahmadbudiyarto@gmail.com'),(167,'budiyarto','2019-03-14',13000000,1,'2019314161130','Confirm','ahmadbudiyarto@gmail.com'),(168,'budiyarto','2019-03-15',35000000,2,'2019315143347','Pending','ahmadbudiyarto@gmail.com');
/*!40000 ALTER TABLE `daftarorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailorder`
--

DROP TABLE IF EXISTS `detailorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `detailorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idtrx` int(11) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailorder`
--

LOCK TABLES `detailorder` WRITE;
/*!40000 ALTER TABLE `detailorder` DISABLE KEYS */;
INSERT INTO `detailorder` VALUES (135,148,2,1),(136,148,12,1),(139,151,22,1),(140,152,24,1),(149,157,26,1),(150,157,22,1),(162,165,35,1),(163,166,23,1),(164,167,27,1),(165,168,23,1),(166,168,22,1);
/*!40000 ALTER TABLE `detailorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joinproduct`
--

DROP TABLE IF EXISTS `joinproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `joinproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(99) NOT NULL,
  `category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joinproduct`
--

LOCK TABLES `joinproduct` WRITE;
/*!40000 ALTER TABLE `joinproduct` DISABLE KEYS */;
INSERT INTO `joinproduct` VALUES (14,'FLOWING BOMBER JACKET','Jaket');
/*!40000 ALTER TABLE `joinproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konfirmasiorder`
--

DROP TABLE IF EXISTS `konfirmasiorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `konfirmasiorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `invoice` varchar(90) NOT NULL,
  `image` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konfirmasiorder`
--

LOCK TABLES `konfirmasiorder` WRITE;
/*!40000 ALTER TABLE `konfirmasiorder` DISABLE KEYS */;
INSERT INTO `konfirmasiorder` VALUES (38,'budiyarto','2019314152410','/products/confirmtrx/TRX1552551934240.png'),(39,'budiyarto','2019314152837','/products/confirmtrx/TRX1552552153769.png'),(40,'budiyarto','2019314161130','/products/confirmtrx/TRX1552554731895.jpg'),(41,'budiyarto','2019315143347','/products/confirmtrx/TRX1552635309844.jpg');
/*!40000 ALTER TABLE `konfirmasiorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(150) NOT NULL,
  `harga` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `deskripsi` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (22,'iPhone X 64GB',17000000,'/products/gambar/PRO1552393594002.jpg','Display 5.8-inch  OS  iOS 12  Battery  2716mAh  Chip A11 Bionic chip with 64-bit architecture Neural Engine  3 GB RAM'),(23,'iPhone XR 64GB',18000000,'/products/gambar/PRO1552392075731.jpg','Display 6.1-inch  OS  iOS 12  Battery  2942mAh  Chip A12 Bionic chip with 64-bit architecture Neural Engine  3 GB RAM'),(24,'iPhone XS 64GB',19000000,'/products/gambar/PRO1552392124889.jpeg','Display 5.8-inch  OS  iOS 12  Battery  2658mAh  Chip A12 Bionic chip with 64-bit architecture Neural Engine  4 GB RAM  Camera Main: 12MP dual camera with wide-angle and telephoto cameras Wide-angle: ƒ/1.8 aperture Telephoto: ƒ/2.4 aperture Selfie: 7MP'),(26,'Apple Watch',5500000,'/products/gambar/PRO1552394075141.jpg','Display 1.78-inch  OS  WatchOS 05  Battery  Non-removable Li-Ion battery stand by up to 18 hours  Chip Apple S4 Power VR'),(27,'iPad Pro 2018',13000000,'/products/gambar/PRO1552394129881.jpg','Display 12.9-inch  OS  iOS 12  Battery  9720mAh  Chip A12X Bionic chip with 64-bit architecture Neural Engine  6 GB RAM  Camera Main: 12MP  Wide-angle: ƒ/1.8 aperture Selfie: 7MP'),(33,'iPad Pro 2018 1TB',16000000,'/products/gambar/PRO1552496489758.jpg','Display 12.9-inch OS iOS 12 Battery 9720mAh Chip A12X Bionic chip with 64-bit architecture Neural Engine 6 GB RAM Camera Main: 12MP Wide-angle: ƒ/1.8 aperture Selfie: 7MP'),(34,'iPhone X 256GB',18000000,'/products/gambar/PRO1552496549686.jpg','Display 5.8-inch OS iOS 12 Battery 2716mAh Chip A11 Bionic chip with 64-bit architecture Neural Engine 3 GB RAM'),(35,'iPhone XS 256GB',20000000,'/products/gambar/PRO1552496599526.jpeg','	Display 5.8-inch OS iOS 12 Battery 2658mAh Chip A12 Bionic chip with 64-bit architecture Neural Engine 4 GB RAM Camera Main: 12MP dual camera with wide-angle and telephoto cameras Wide-angle: ƒ/1.8 aperture Telephoto: ƒ/2.4 aperture Selfie: 7MP');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(90) NOT NULL,
  `email` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (40,'aha','04403d541740e5f75f5905dd0ba1d8d7922c899fbbc48c47f94cdb42c044c904','ahmadbudiyarto@gmail.com','Verified','SUPERADMIN'),(41,'admin','16d2a2143342bbda8a189324c15e9b6b9b583f2ce479e4a4d4e39c97559c3056','ahmadbudiyarto@gmail.com','Verified','SUPERADMIN'),(42,'payment','2a1342c78fc6cef3008acbbf62653f2927cc437f62dbe0e00351f5682aa051cd','ahmadbudiyarto@gmail.com','Verified','ADMIN PAYMENT'),(43,'editor','44b3c37f39a96527e69d81cd73988675a15642ee7791350bb7e524e8689cfd43','ahmadbudiyarto@gmail.com','Verified','EDITOR'),(45,'budiyarto','b606697945ea620f69ada07c100fdb2e78fb6f50ad1d21e88896c3c906560bed','ahmadbudiyarto@gmail.com','Verified','MEMBER'),(46,'yusuf','0d0e968c82189449b60ada9aef94fe0a118b2f8423c44a93971a01b3fe10fb07','ahmadbudiyarto@gmail.com','Verified','MEMBER'),(47,'adrien','ccd14e3dd15112b02a408e98abb2b760d90428eb1b5d66504a5d0887a086842c','ahmadbudiyarto@gmail.com','Unverified','MEMBER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-15 14:49:21

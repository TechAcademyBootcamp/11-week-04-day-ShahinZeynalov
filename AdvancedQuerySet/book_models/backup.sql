-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: books_db
-- ------------------------------------------------------
-- Server version	5.7.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Sinif',7,'add_class'),(26,'Can change Sinif',7,'change_class'),(27,'Can delete Sinif',7,'delete_class'),(28,'Can view Sinif',7,'view_class'),(29,'Can add relation',8,'add_relation'),(30,'Can change relation',8,'change_relation'),(31,'Can delete relation',8,'delete_relation'),(32,'Can view relation',8,'view_relation'),(33,'Can add Mekteb',9,'add_school'),(34,'Can change Mekteb',9,'change_school'),(35,'Can delete Mekteb',9,'delete_school'),(36,'Can view Mekteb',9,'view_school'),(37,'Can add Shexs',10,'add_staff'),(38,'Can change Shexs',10,'change_staff'),(39,'Can delete Shexs',10,'delete_staff'),(40,'Can view Shexs',10,'view_staff'),(41,'Can add Fenn',11,'add_subject'),(42,'Can change Fenn',11,'change_subject'),(43,'Can delete Fenn',11,'delete_subject'),(44,'Can view Fenn',11,'view_subject'),(45,'Can add Sagird',12,'add_student'),(46,'Can change Sagird',12,'change_student'),(47,'Can delete Sagird',12,'delete_student'),(48,'Can view Sagird',12,'view_student'),(49,'Can add Author',13,'add_author'),(50,'Can change Author',13,'change_author'),(51,'Can delete Author',13,'delete_author'),(52,'Can view Author',13,'view_author'),(53,'Can add Book',14,'add_book'),(54,'Can change Book',14,'change_book'),(55,'Can delete Book',14,'delete_book'),(56,'Can view Book',14,'view_book'),(57,'Can add Category',15,'add_category'),(58,'Can change Category',15,'change_category'),(59,'Can delete Category',15,'delete_category'),(60,'Can view Category',15,'view_category');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$bzkuuhNNqnHR$cXKcdii+jxfNhsL9jgGZ8BtCkG6g8RNHkUta528YRq4=','2019-12-19 13:20:53.068658',1,'admin','','','',1,1,'2019-12-19 13:20:31.022429');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_app_author`
--

DROP TABLE IF EXISTS `book_app_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_app_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(63) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `birthday` date DEFAULT NULL,
  `nationality` varchar(63) DEFAULT NULL,
  `info` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_app_author`
--

LOCK TABLES `book_app_author` WRITE;
/*!40000 ALTER TABLE `book_app_author` DISABLE KEYS */;
INSERT INTO `book_app_author` VALUES (1,'John','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 13:50:42.497177','2019-12-19 13:50:42.497273'),(2,'John','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 13:51:38.942224','2019-12-19 13:51:38.942297'),(3,'George','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 13:52:12.153929','2019-12-19 13:52:12.154047'),(4,'Paul','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 13:52:38.847270','2019-12-19 13:52:38.847339'),(5,'Ringo','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 13:53:08.411815','2019-12-19 13:53:08.411902'),(6,'Charles Dickens','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:27:49.645634','2019-12-19 14:27:49.645701'),(7,'Victor Huqo','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:27:49.652661','2019-12-19 14:27:49.652727'),(8,'Dostoyevsky','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:27:49.656886','2019-12-19 14:27:49.656952'),(9,'Charles Dickens','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:28:14.739509','2019-12-19 14:28:14.739579'),(10,'Victor Huqo','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:28:14.745654','2019-12-19 14:28:14.745730'),(11,'Dostoyevsky','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:28:14.750218','2019-12-19 14:28:14.750295'),(12,'Charles Dickens','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:28:38.759259','2019-12-19 14:28:38.759334'),(13,'Victor Huqo','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:28:38.764897','2019-12-19 14:28:38.764962'),(14,'Dostoyevsky','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:28:38.770196','2019-12-19 14:28:38.770261'),(15,'Charles Dickens','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:14.115220','2019-12-19 14:29:14.115290'),(16,'Victor Huqo','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:14.121444','2019-12-19 14:29:14.121520'),(17,'Dostoyevsky','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:14.125753','2019-12-19 14:29:14.125833'),(18,'Charles Dickens','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:15.175570','2019-12-19 14:29:15.175638'),(19,'Victor Huqo','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:15.181297','2019-12-19 14:29:15.181488'),(20,'Dostoyevsky','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:15.186514','2019-12-19 14:29:15.186604'),(21,'Charles Dickens','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:16.564424','2019-12-19 14:29:16.564494'),(22,'Victor Huqo','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:16.571065','2019-12-19 14:29:16.571156'),(23,'Dostoyevsky','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 14:29:16.575735','2019-12-19 14:29:16.575810'),(24,'Charles Dickens','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 16:07:26.553700','2019-12-19 16:07:26.553771'),(25,'Daniel Defoe','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 16:07:26.558963','2019-12-19 16:07:26.559028'),(26,'Daniel Defoe','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 16:07:26.563706','2019-12-19 16:07:26.563771'),(27,'Daniel Defoe','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 16:07:26.567892','2019-12-19 16:07:26.567962'),(28,'Dostoyevsky','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 16:07:26.572292','2019-12-19 16:07:26.572374'),(29,'Daniel Defoe','',1,'2019-12-19','Somewhere','Author info ...','2019-12-19 16:12:22.045057','2019-12-19 16:12:22.045132'),(30,'Daniel Defoe','',1,'2019-12-19','Somewhere','Author info ...','2019-12-19 16:12:36.569136','2019-12-19 16:12:36.569224'),(31,'Daniel Defoe','',2,'2019-12-19',NULL,'Author info ...','2019-12-19 17:54:17.275907','2019-12-19 17:54:17.276039'),(32,'Dostoyevsky','',1,'2019-12-19',NULL,'Author info ...','2019-12-19 18:13:48.290290','2019-12-19 18:13:48.290367');
/*!40000 ALTER TABLE `book_app_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_app_book`
--

DROP TABLE IF EXISTS `book_app_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_app_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(127) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `page_count` int(11) DEFAULT NULL,
  `cover_image` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_app_book_author_id_93532c48_fk_book_app_author_id` (`author_id`),
  CONSTRAINT `book_app_book_author_id_93532c48_fk_book_app_author_id` FOREIGN KEY (`author_id`) REFERENCES `book_app_author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_app_book`
--

LOCK TABLES `book_app_book` WRITE;
/*!40000 ALTER TABLE `book_app_book` DISABLE KEYS */;
INSERT INTO `book_app_book` VALUES (4,'Great Expectations','Updated description',18.01,456,'','2019-12-19 14:28:38.782421','2019-12-19 14:28:38.782505',1),(5,' Poter','Updated description',10.50,475,'','2019-12-19 14:28:38.787141','2019-12-19 14:28:38.787228',13),(6,'Harry ','Updated description',25.99,999,'','2019-12-19 14:28:38.793537','2019-12-19 14:28:38.793666',14),(7,'Great Great','Updated description',5.30,234,'','2019-12-19 14:28:38.798656','2019-12-19 14:28:38.798729',12),(8,'Big think','Updated description',5.30,443,'','2019-12-19 14:28:38.803700','2019-12-19 14:28:38.803784',12),(9,'Great Ts in the fields','Updated description',5.30,1225,'','2019-12-19 14:28:38.809534','2019-12-19 14:28:38.809622',12),(11,'Great Expectations','Updated description',18.01,456,'','2019-12-19 14:29:14.136235','2019-12-19 14:29:14.136331',1),(12,' Poter','Updated description',10.50,475,'','2019-12-19 14:29:14.140969','2019-12-19 14:29:14.141054',16),(13,'Harry ','Updated description',25.99,999,'','2019-12-19 14:29:14.145670','2019-12-19 14:29:14.145758',17),(14,'Great Great','Updated description',5.30,234,'','2019-12-19 14:29:14.150881','2019-12-19 14:29:14.150974',15),(15,'Big think','Updated description',5.30,443,'','2019-12-19 14:29:14.155121','2019-12-19 14:29:14.155204',15),(16,'Great Ts in the fields','Updated description',5.30,1225,'','2019-12-19 14:29:14.159721','2019-12-19 14:29:14.159796',15),(18,'Great Expectations','Updated description',18.01,456,'','2019-12-19 14:29:15.196186','2019-12-19 14:29:15.196270',1),(19,' Poter','Updated description',10.50,475,'','2019-12-19 14:29:15.201036','2019-12-19 14:29:15.201155',19),(20,'Harry ','Updated description',25.99,999,'','2019-12-19 14:29:15.206489','2019-12-19 14:29:15.206574',20),(21,'Great Great','Updated description',5.30,234,'','2019-12-19 14:29:15.211647','2019-12-19 14:29:15.211721',18),(22,'Big think','Updated description',5.30,443,'','2019-12-19 14:29:15.216991','2019-12-19 14:29:15.217067',18),(23,'Great Ts in the fields','Updated description',5.30,1225,'','2019-12-19 14:29:15.222380','2019-12-19 14:29:15.222465',18),(25,'Great Expectations','Updated description',18.01,456,'','2019-12-19 14:29:16.584846','2019-12-19 14:29:16.584913',1),(26,' Poter','Updated description',10.50,475,'','2019-12-19 14:29:16.589345','2019-12-19 14:29:16.589567',22),(27,'Harry ','Updated description',25.99,999,'','2019-12-19 14:29:16.594731','2019-12-19 14:29:16.594816',23),(28,'Great Great','Updated description',5.30,234,'','2019-12-19 14:29:16.599530','2019-12-19 14:29:16.599604',21),(29,'Big think','Updated description',5.30,443,'','2019-12-19 14:29:16.604475','2019-12-19 14:29:16.604585',21),(30,'Great Ts in the fields','Updated description',5.30,1225,'','2019-12-19 14:29:16.610079','2019-12-19 14:29:16.610164',21),(32,'Great Expectations','Updated description',18.01,456,'','2019-12-19 16:07:26.581794','2019-12-19 16:07:26.581885',1),(33,' Poter','Updated description',10.50,475,'','2019-12-19 16:07:26.586836','2019-12-19 16:07:26.586921',27),(34,'Harry ','Updated description',25.99,999,'','2019-12-19 16:07:26.592589','2019-12-19 16:07:26.592679',27),(35,'Great Great','Updated description',5.30,234,'','2019-12-19 16:07:26.598298','2019-12-19 16:07:26.598381',27),(36,'Big think','Updated description',5.30,443,'','2019-12-19 16:07:26.603040','2019-12-19 16:07:26.603154',27),(37,'Great Ts in the fields','Updated description',5.30,1225,'','2019-12-19 16:07:26.610665','2019-12-19 16:07:26.610739',24),(38,'Big think','Some Text',5.30,443,'','2019-12-19 17:54:26.529644','2019-12-19 17:54:26.529742',31),(39,'Harry Poter','Some Text',12.50,657,'','2019-12-19 18:15:06.634766','2019-12-19 18:15:06.634875',32);
/*!40000 ALTER TABLE `book_app_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_app_book_category_id`
--

DROP TABLE IF EXISTS `book_app_book_category_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_app_book_category_id` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_app_book_category_id_book_id_category_id_7040f47e_uniq` (`book_id`,`category_id`),
  KEY `book_app_book_catego_category_id_6a9257a6_fk_book_app_` (`category_id`),
  CONSTRAINT `book_app_book_catego_category_id_6a9257a6_fk_book_app_` FOREIGN KEY (`category_id`) REFERENCES `book_app_category` (`id`),
  CONSTRAINT `book_app_book_category_id_book_id_410bca44_fk_book_app_book_id` FOREIGN KEY (`book_id`) REFERENCES `book_app_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_app_book_category_id`
--

LOCK TABLES `book_app_book_category_id` WRITE;
/*!40000 ALTER TABLE `book_app_book_category_id` DISABLE KEYS */;
INSERT INTO `book_app_book_category_id` VALUES (1,4,1);
/*!40000 ALTER TABLE `book_app_book_category_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_app_category`
--

DROP TABLE IF EXISTS `book_app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_app_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(127) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_app_category`
--

LOCK TABLES `book_app_category` WRITE;
/*!40000 ALTER TABLE `book_app_category` DISABLE KEYS */;
INSERT INTO `book_app_category` VALUES (1,'Adventure','2019-12-19 13:56:01.562125','2019-12-19 13:56:01.562238'),(2,'Drama','2019-12-19 13:56:21.351573','2019-12-19 13:56:21.351696'),(3,'Romance','2019-12-19 13:56:51.324910','2019-12-19 13:56:51.325051'),(4,'Science Fiction','2019-12-19 13:58:03.726960','2019-12-19 13:58:03.727092');
/*!40000 ALTER TABLE `book_app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-12-19 13:22:17.620230','1','History',1,'[{\"added\": {}}]',11,1),(2,'2019-12-19 13:22:34.895898','2','Mathematic',1,'[{\"added\": {}}]',11,1),(3,'2019-12-19 13:23:34.633831','3','Geography',1,'[{\"added\": {}}]',11,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(13,'book_app','author'),(14,'book_app','book'),(15,'book_app','category'),(7,'book_app','class'),(8,'book_app','relation'),(9,'book_app','school'),(10,'book_app','staff'),(12,'book_app','student'),(11,'book_app','subject'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-12-19 13:19:59.954243'),(2,'auth','0001_initial','2019-12-19 13:20:00.186967'),(3,'admin','0001_initial','2019-12-19 13:20:00.737705'),(4,'admin','0002_logentry_remove_auto_add','2019-12-19 13:20:00.869553'),(5,'admin','0003_logentry_add_action_flag_choices','2019-12-19 13:20:00.893662'),(6,'contenttypes','0002_remove_content_type_name','2019-12-19 13:20:01.024106'),(7,'auth','0002_alter_permission_name_max_length','2019-12-19 13:20:01.048065'),(8,'auth','0003_alter_user_email_max_length','2019-12-19 13:20:01.080926'),(9,'auth','0004_alter_user_username_opts','2019-12-19 13:20:01.103350'),(10,'auth','0005_alter_user_last_login_null','2019-12-19 13:20:01.163879'),(11,'auth','0006_require_contenttypes_0002','2019-12-19 13:20:01.171036'),(12,'auth','0007_alter_validators_add_error_messages','2019-12-19 13:20:01.198558'),(13,'auth','0008_alter_user_username_max_length','2019-12-19 13:20:01.244945'),(14,'auth','0009_alter_user_last_name_max_length','2019-12-19 13:20:01.273089'),(15,'auth','0010_alter_group_name_max_length','2019-12-19 13:20:01.304160'),(16,'auth','0011_update_proxy_permissions','2019-12-19 13:20:01.330819'),(17,'book_app','0001_initial','2019-12-19 13:20:01.702402'),(18,'sessions','0001_initial','2019-12-19 13:20:02.125912'),(19,'book_app','0002_auto_20191219_1328','2019-12-19 13:29:15.275187');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5j84y0fdrwxhz3pyiwxxjkrkdfj9dvi9','ZGZmZTJmZjM4ZTQ0NTc0MDU5NWJjNTE5OWI1ZGI0MDYxM2M5ODVmOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYmJjM2M5ZGM5OGRiZjZmZDYwNTcyOTc2YTQ0YTM4ZjkwNTAyYTE0In0=','2020-01-02 13:20:53.075731');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-20  6:40:02

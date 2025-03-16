-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm4lg2u
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `banji`
--

DROP TABLE IF EXISTS `banji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) NOT NULL COMMENT '班级',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banji` (`banji`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='班级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banji`
--

LOCK TABLES `banji` WRITE;
/*!40000 ALTER TABLE `banji` DISABLE KEYS */;
INSERT INTO `banji` VALUES (41,'2021-01-19 10:20:04','201'),(42,'2021-01-19 10:20:04','202'),(43,'2021-01-19 10:20:04','203'),(44,'2021-01-19 10:20:04','204'),(45,'2021-01-19 10:20:04','205');
/*!40000 ALTER TABLE `banji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611107404234 DEFAULT CHARSET=utf8 COMMENT='师生交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (91,'2021-01-19 10:20:04',1,1,'提问1','回复1',1),(92,'2021-01-19 10:20:04',2,2,'提问2','回复2',2),(93,'2021-01-19 10:20:04',3,3,'提问3','回复3',3),(94,'2021-01-19 10:20:04',4,4,'提问4','回复4',4),(95,'2021-01-19 10:20:04',5,5,'提问5','回复5',5),(96,'2021-01-19 10:20:04',6,6,'提问6','回复6',6),(1611107332678,'2021-01-20 01:48:52',1611106973939,NULL,'1这里也可以发布信息给老师交流',NULL,0),(1611107404233,'2021-01-20 01:50:04',1611106973939,21,NULL,'好的有什么可以帮到你',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm4lg2u/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm4lg2u/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm4lg2u/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611107316552 DEFAULT CHARSET=utf8 COMMENT='学校论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (101,'2021-01-19 10:20:04','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(102,'2021-01-19 10:20:04','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(103,'2021-01-19 10:20:04','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(104,'2021-01-19 10:20:04','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(105,'2021-01-19 10:20:04','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(106,'2021-01-19 10:20:04','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1611107307887,'2021-01-20 01:48:27','11111','<p>请输入内容这里可以发布信息用于用户与教师进行交流</p>',0,1611106973939,'1','开放'),(1611107316551,'2021-01-20 01:48:35',NULL,'12212121',1611107307887,1611106973939,'1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhujiaokecheng` varchar(200) DEFAULT NULL COMMENT '主教课程',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2021-01-19 10:20:03','001','001','王老师','男','13823888881','773890001@qq.com','英语'),(22,'2021-01-19 10:20:03','教师2','123456','教师姓名2','男','13823888882','773890002@qq.com','主教课程2'),(23,'2021-01-19 10:20:03','教师3','123456','教师姓名3','男','13823888883','773890003@qq.com','主教课程3'),(24,'2021-01-19 10:20:03','教师4','123456','教师姓名4','男','13823888884','773890004@qq.com','主教课程4'),(25,'2021-01-19 10:20:03','教师5','123456','教师姓名5','男','13823888885','773890005@qq.com','主教课程5'),(26,'2021-01-19 10:20:03','教师6','123456','教师姓名6','男','13823888886','773890006@qq.com','主教课程6');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaoqindaka`
--

DROP TABLE IF EXISTS `kaoqindaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaoqindaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `dakashijian` date DEFAULT NULL COMMENT '打卡时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dakatu` varchar(200) DEFAULT NULL COMMENT '打卡图',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611107231690 DEFAULT CHARSET=utf8 COMMENT='考勤打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaoqindaka`
--

LOCK TABLES `kaoqindaka` WRITE;
/*!40000 ALTER TABLE `kaoqindaka` DISABLE KEYS */;
INSERT INTO `kaoqindaka` VALUES (51,'2021-01-19 10:20:04','学号1','学生姓名1','班级1','2021-01-19','备注1','http://localhost:8080/ssm4lg2u/upload/kaoqindaka_dakatu1.jpg',1),(52,'2021-01-19 10:20:04','学号2','学生姓名2','班级2','2021-01-19','备注2','http://localhost:8080/ssm4lg2u/upload/kaoqindaka_dakatu2.jpg',2),(53,'2021-01-19 10:20:04','学号3','学生姓名3','班级3','2021-01-19','备注3','http://localhost:8080/ssm4lg2u/upload/kaoqindaka_dakatu3.jpg',3),(54,'2021-01-19 10:20:04','学号4','学生姓名4','班级4','2021-01-19','备注4','http://localhost:8080/ssm4lg2u/upload/kaoqindaka_dakatu4.jpg',4),(55,'2021-01-19 10:20:04','学号5','学生姓名5','班级5','2021-01-19','备注5','http://localhost:8080/ssm4lg2u/upload/kaoqindaka_dakatu5.jpg',5),(56,'2021-01-19 10:20:04','学号6','学生姓名6','班级6','2021-01-19','备注6','http://localhost:8080/ssm4lg2u/upload/kaoqindaka_dakatu6.jpg',6),(1611107231689,'2021-01-20 01:47:11','1','刘倩','201','2021-01-13','11111','http://localhost:8080/ssm4lg2u/upload/1611107230854.jpg',1611106973939);
/*!40000 ALTER TABLE `kaoqindaka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kebiaoxinxi`
--

DROP TABLE IF EXISTS `kebiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kebiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingqi` varchar(200) DEFAULT NULL COMMENT '星期',
  `kechengtu` varchar(200) DEFAULT NULL COMMENT '课程图',
  `kechengyi` varchar(200) DEFAULT NULL COMMENT '课程一',
  `kechenger` varchar(200) DEFAULT NULL COMMENT '课程二',
  `kechengsan` varchar(200) DEFAULT NULL COMMENT '课程三',
  `kechengsi` varchar(200) DEFAULT NULL COMMENT '课程四',
  `kechengwu` varchar(200) DEFAULT NULL COMMENT '课程五',
  `kechengliu` varchar(200) DEFAULT NULL COMMENT '课程六',
  `kechengqi` varchar(200) DEFAULT NULL COMMENT '课程七',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611107183112 DEFAULT CHARSET=utf8 COMMENT='课表信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kebiaoxinxi`
--

LOCK TABLES `kebiaoxinxi` WRITE;
/*!40000 ALTER TABLE `kebiaoxinxi` DISABLE KEYS */;
INSERT INTO `kebiaoxinxi` VALUES (81,'2021-01-19 10:20:04','班级1','星期一','http://localhost:8080/ssm4lg2u/upload/kebiaoxinxi_kechengtu1.jpg','课程一1','课程二1','课程三1','课程四1','课程五1','课程六1','课程七1','教师工号1','教师姓名1'),(82,'2021-01-19 10:20:04','班级2','星期一','http://localhost:8080/ssm4lg2u/upload/kebiaoxinxi_kechengtu2.jpg','课程一2','课程二2','课程三2','课程四2','课程五2','课程六2','课程七2','教师工号2','教师姓名2'),(83,'2021-01-19 10:20:04','班级3','星期一','http://localhost:8080/ssm4lg2u/upload/kebiaoxinxi_kechengtu3.jpg','课程一3','课程二3','课程三3','课程四3','课程五3','课程六3','课程七3','教师工号3','教师姓名3'),(84,'2021-01-19 10:20:04','班级4','星期一','http://localhost:8080/ssm4lg2u/upload/kebiaoxinxi_kechengtu4.jpg','课程一4','课程二4','课程三4','课程四4','课程五4','课程六4','课程七4','教师工号4','教师姓名4'),(85,'2021-01-19 10:20:04','班级5','星期一','http://localhost:8080/ssm4lg2u/upload/kebiaoxinxi_kechengtu5.jpg','课程一5','课程二5','课程三5','课程四5','课程五5','课程六5','课程七5','教师工号5','教师姓名5'),(86,'2021-01-19 10:20:04','班级6','星期一','http://localhost:8080/ssm4lg2u/upload/kebiaoxinxi_kechengtu6.jpg','课程一6','课程二6','课程三6','课程四6','课程五6','课程六6','课程七6','教师工号6','教师姓名6'),(1611107183111,'2021-01-20 01:46:22','203','星期一','http://localhost:8080/ssm4lg2u/upload/1611107174176.jpg','什么课程','英语课程','课程名称4','什么课程','课程名称5','课程名称5','课程名称6','001','王老师');
/*!40000 ALTER TABLE `kebiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengmingcheng`
--

DROP TABLE IF EXISTS `kechengmingcheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengmingcheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课程名称';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengmingcheng`
--

LOCK TABLES `kechengmingcheng` WRITE;
/*!40000 ALTER TABLE `kechengmingcheng` DISABLE KEYS */;
INSERT INTO `kechengmingcheng` VALUES (71,'2021-01-19 10:20:04','什么课程'),(72,'2021-01-19 10:20:04','英语课程'),(73,'2021-01-19 10:20:04','课程名称3'),(74,'2021-01-19 10:20:04','课程名称4'),(75,'2021-01-19 10:20:04','课程名称5'),(76,'2021-01-19 10:20:04','课程名称6');
/*!40000 ALTER TABLE `kechengmingcheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjia`
--

DROP TABLE IF EXISTS `qingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qingjiabianhao` varchar(200) DEFAULT NULL COMMENT '请假编号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `qingjiazhaopian` varchar(200) DEFAULT NULL COMMENT '请假照片',
  `qingjialiyou` varchar(200) DEFAULT NULL COMMENT '请假理由',
  `qingjiashijian` date DEFAULT NULL COMMENT '请假时间',
  `qingjiatianshu` int(11) DEFAULT NULL COMMENT '请假天数',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qingjiabianhao` (`qingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611107266256 DEFAULT CHARSET=utf8 COMMENT='请假';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjia`
--

LOCK TABLES `qingjia` WRITE;
/*!40000 ALTER TABLE `qingjia` DISABLE KEYS */;
INSERT INTO `qingjia` VALUES (61,'2021-01-19 10:20:04','请假编号1','学号1','学生姓名1','班级1','http://localhost:8080/ssm4lg2u/upload/qingjia_qingjiazhaopian1.jpg','请假理由1','2021-01-19',1,'否','',1),(62,'2021-01-19 10:20:04','请假编号2','学号2','学生姓名2','班级2','http://localhost:8080/ssm4lg2u/upload/qingjia_qingjiazhaopian2.jpg','请假理由2','2021-01-19',2,'否','',2),(63,'2021-01-19 10:20:04','请假编号3','学号3','学生姓名3','班级3','http://localhost:8080/ssm4lg2u/upload/qingjia_qingjiazhaopian3.jpg','请假理由3','2021-01-19',3,'否','',3),(64,'2021-01-19 10:20:04','请假编号4','学号4','学生姓名4','班级4','http://localhost:8080/ssm4lg2u/upload/qingjia_qingjiazhaopian4.jpg','请假理由4','2021-01-19',4,'否','',4),(65,'2021-01-19 10:20:04','请假编号5','学号5','学生姓名5','班级5','http://localhost:8080/ssm4lg2u/upload/qingjia_qingjiazhaopian5.jpg','请假理由5','2021-01-19',5,'否','',5),(66,'2021-01-19 10:20:04','请假编号6','学号6','学生姓名6','班级6','http://localhost:8080/ssm4lg2u/upload/qingjia_qingjiazhaopian6.jpg','请假理由6','2021-01-19',6,'否','',6),(1611107266255,'2021-01-20 01:47:45','20211209423721204424','1','刘倩','201','http://localhost:8080/ssm4lg2u/upload/1611107248617.jpg','今天生病','2021-01-05',3,'是','同意',1611106973939);
/*!40000 ALTER TABLE `qingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','3igfmdwmgk4xrdp9kcrluz9qrr22e49i','2021-01-20 01:38:49','2021-01-20 02:50:26'),(2,11,'001','xuesheng','学生','z706l70zwsy8vho1r351aid0m4bstsfu','2021-01-20 01:39:11','2021-01-20 02:41:30'),(3,21,'001','jiaoshi','管理员','tlturnybz3tgscd8joejgq35nzq789m6','2021-01-20 01:40:17','2021-01-20 02:50:15'),(4,1611106973939,'1','xuesheng','学生','q5y9zw755a7w6ly350lfb7qwwu5iwdrj','2021-01-20 01:42:58','2021-01-20 02:46:36');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-19 10:20:04');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611106973940 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-01-19 10:20:03','001','001','学生姓名1','男','http://localhost:8080/ssm4lg2u/upload/xuesheng_touxiang1.jpg','班级1','13823888881','773890001@qq.com'),(12,'2021-01-19 10:20:03','学生2','123456','学生姓名2','男','http://localhost:8080/ssm4lg2u/upload/xuesheng_touxiang2.jpg','班级2','13823888882','773890002@qq.com'),(13,'2021-01-19 10:20:03','学生3','123456','学生姓名3','男','http://localhost:8080/ssm4lg2u/upload/xuesheng_touxiang3.jpg','班级3','13823888883','773890003@qq.com'),(14,'2021-01-19 10:20:03','学生4','123456','学生姓名4','男','http://localhost:8080/ssm4lg2u/upload/xuesheng_touxiang4.jpg','班级4','13823888884','773890004@qq.com'),(15,'2021-01-19 10:20:03','学生5','123456','学生姓名5','男','http://localhost:8080/ssm4lg2u/upload/xuesheng_touxiang5.jpg','班级5','13823888885','773890005@qq.com'),(16,'2021-01-19 10:20:03','学生6','123456','学生姓名6','男','http://localhost:8080/ssm4lg2u/upload/xuesheng_touxiang6.jpg','班级6','13823888886','773890006@qq.com'),(1611106973939,'2021-01-20 01:42:53','1','1','刘倩','女','http://localhost:8080/ssm4lg2u/upload/1611107208051.png','201','15244121412','121212@163.com');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuexiaogonggao`
--

DROP TABLE IF EXISTS `xuexiaogonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuexiaogonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='学校公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuexiaogonggao`
--

LOCK TABLES `xuexiaogonggao` WRITE;
/*!40000 ALTER TABLE `xuexiaogonggao` DISABLE KEYS */;
INSERT INTO `xuexiaogonggao` VALUES (31,'2021-01-19 10:20:03','公告标题1','公告类型1','公告内容1','2021-01-19','发布人1','http://localhost:8080/ssm4lg2u/upload/xuexiaogonggao_fengmian1.jpg'),(32,'2021-01-19 10:20:03','公告标题2','公告类型2','公告内容2','2021-01-19','发布人2','http://localhost:8080/ssm4lg2u/upload/xuexiaogonggao_fengmian2.jpg'),(33,'2021-01-19 10:20:04','公告标题3','公告类型3','公告内容3','2021-01-19','发布人3','http://localhost:8080/ssm4lg2u/upload/xuexiaogonggao_fengmian3.jpg'),(34,'2021-01-19 10:20:04','公告标题4','公告类型4','公告内容4','2021-01-19','发布人4','http://localhost:8080/ssm4lg2u/upload/xuexiaogonggao_fengmian4.jpg'),(35,'2021-01-19 10:20:04','公告标题5','公告类型5','公告内容5','2021-01-19','发布人5','http://localhost:8080/ssm4lg2u/upload/xuexiaogonggao_fengmian5.jpg'),(36,'2021-01-19 10:20:04','公告标题6','公告类型6','公告内容6','2021-01-19','发布人6','http://localhost:8080/ssm4lg2u/upload/xuexiaogonggao_fengmian6.jpg');
/*!40000 ALTER TABLE `xuexiaogonggao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 10:50:07

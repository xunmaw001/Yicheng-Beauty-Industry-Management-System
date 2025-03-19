-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm5tu83
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm5tu83/upload/1616378786991.jpg'),(2,'picture2','http://localhost:8080/jspm5tu83/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm5tu83/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussfaxingmeirongshi`
--

DROP TABLE IF EXISTS `discussfaxingmeirongshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussfaxingmeirongshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378890365 DEFAULT CHARSET=utf8 COMMENT='发型美容师评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussfaxingmeirongshi`
--

LOCK TABLES `discussfaxingmeirongshi` WRITE;
/*!40000 ALTER TABLE `discussfaxingmeirongshi` DISABLE KEYS */;
INSERT INTO `discussfaxingmeirongshi` VALUES (111,'2021-03-22 02:02:30',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-22 02:02:30',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-22 02:02:30',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-22 02:02:30',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-22 02:02:30',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-22 02:02:30',6,6,'用户名6','评论内容6','回复内容6'),(1616378834296,'2021-03-22 02:07:13',1616378654116,1616378813932,NULL,'放大后感觉吗风格就赶紧分享',NULL),(1616378890364,'2021-03-22 02:08:09',1616378683615,1616378813932,NULL,'dhgfjfkmhf你感觉',NULL);
/*!40000 ALTER TABLE `discussfaxingmeirongshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstaocanxinxi`
--

DROP TABLE IF EXISTS `discusstaocanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstaocanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378930575 DEFAULT CHARSET=utf8 COMMENT='套餐信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstaocanxinxi`
--

LOCK TABLES `discusstaocanxinxi` WRITE;
/*!40000 ALTER TABLE `discusstaocanxinxi` DISABLE KEYS */;
INSERT INTO `discusstaocanxinxi` VALUES (121,'2021-03-22 02:02:30',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-22 02:02:30',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-22 02:02:30',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-22 02:02:30',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-22 02:02:30',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-22 02:02:30',6,6,'用户名6','评论内容6','回复内容6'),(1616378930574,'2021-03-22 02:08:49',1616378769733,1616378813932,NULL,'该换个房间',NULL);
/*!40000 ALTER TABLE `discusstaocanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faxingmeirongshi`
--

DROP TABLE IF EXISTS `faxingmeirongshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faxingmeirongshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jishileixing` varchar(200) DEFAULT NULL COMMENT '技师类型',
  `jishixingming` varchar(200) DEFAULT NULL COMMENT '技师姓名',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `congyeshijian` int(11) DEFAULT NULL COMMENT '从业时间',
  `jianjie` longtext COMMENT '简介',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378683616 DEFAULT CHARSET=utf8 COMMENT='发型美容师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faxingmeirongshi`
--

LOCK TABLES `faxingmeirongshi` WRITE;
/*!40000 ALTER TABLE `faxingmeirongshi` DISABLE KEYS */;
INSERT INTO `faxingmeirongshi` VALUES (51,'2021-03-22 02:02:30','技师类型1','技师姓名1','职位名称1',1,'简介1','http://localhost:8080/jspm5tu83/upload/faxingmeirongshi_zhaopian1.jpg',1,1,'2021-03-22 10:02:30'),(52,'2021-03-22 02:02:30','技师类型2','技师姓名2','职位名称2',2,'简介2','http://localhost:8080/jspm5tu83/upload/faxingmeirongshi_zhaopian2.jpg',2,2,'2021-03-22 10:02:30'),(53,'2021-03-22 02:02:30','技师类型3','技师姓名3','职位名称3',3,'简介3','http://localhost:8080/jspm5tu83/upload/faxingmeirongshi_zhaopian3.jpg',3,3,'2021-03-22 10:02:30'),(54,'2021-03-22 02:02:30','技师类型4','技师姓名4','职位名称4',4,'简介4','http://localhost:8080/jspm5tu83/upload/faxingmeirongshi_zhaopian4.jpg',4,4,'2021-03-22 10:02:30'),(55,'2021-03-22 02:02:30','技师类型5','技师姓名5','职位名称5',5,'简介5','http://localhost:8080/jspm5tu83/upload/faxingmeirongshi_zhaopian5.jpg',5,5,'2021-03-22 10:02:30'),(56,'2021-03-22 02:02:30','技师类型6','技师姓名6','职位名称6',6,'简介6','http://localhost:8080/jspm5tu83/upload/faxingmeirongshi_zhaopian6.jpg',6,6,'2021-03-22 10:02:30'),(1616378654116,'2021-03-22 02:04:13','发型师','李四','店长',6,'fjj就能发挥国家航空放假看看看刚才就，，不能把，，，你，吗， \r\n','http://localhost:8080/jspm5tu83/upload/1616378644246.jpg',1,1,'2021-03-22 10:07:17'),(1616378683615,'2021-03-22 02:04:43','美容师','张三','技术',6,'hkhkhkjljljklghjkj你没看吗，就， 韩国看出法规环境的回复该\r\n','http://localhost:8080/jspm5tu83/upload/1616378672532.png',2,2,'2021-03-22 10:08:13');
/*!40000 ALTER TABLE `faxingmeirongshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuan`
--

DROP TABLE IF EXISTS `huiyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378813933 DEFAULT CHARSET=utf8 COMMENT='会员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuan`
--

LOCK TABLES `huiyuan` WRITE;
/*!40000 ALTER TABLE `huiyuan` DISABLE KEYS */;
INSERT INTO `huiyuan` VALUES (11,'2021-03-22 02:02:30','会员1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/jspm5tu83/upload/huiyuan_zhaopian1.jpg'),(12,'2021-03-22 02:02:30','会员2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/jspm5tu83/upload/huiyuan_zhaopian2.jpg'),(13,'2021-03-22 02:02:30','会员3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/jspm5tu83/upload/huiyuan_zhaopian3.jpg'),(14,'2021-03-22 02:02:30','会员4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/jspm5tu83/upload/huiyuan_zhaopian4.jpg'),(15,'2021-03-22 02:02:30','会员5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/jspm5tu83/upload/huiyuan_zhaopian5.jpg'),(16,'2021-03-22 02:02:30','会员6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/jspm5tu83/upload/huiyuan_zhaopian6.jpg'),(1616378813932,'2021-03-22 02:06:53','11','11','11','男','12345678912','12@qq,com','http://localhost:8080/jspm5tu83/upload/1616378874249.jpg');
/*!40000 ALTER TABLE `huiyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huiyuanchongzhi`
--

DROP TABLE IF EXISTS `huiyuanchongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huiyuanchongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chongzhijine` int(11) DEFAULT NULL COMMENT '充值金额',
  `chongzhishijian` datetime DEFAULT NULL COMMENT '充值时间',
  `zhanghuyue` int(11) DEFAULT NULL COMMENT '账户余额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='会员充值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huiyuanchongzhi`
--

LOCK TABLES `huiyuanchongzhi` WRITE;
/*!40000 ALTER TABLE `huiyuanchongzhi` DISABLE KEYS */;
INSERT INTO `huiyuanchongzhi` VALUES (101,'2021-03-22 02:02:30','账号1','姓名1',10,'2021-03-22 10:02:30',1),(102,'2021-03-22 02:02:30','账号2','姓名2',10,'2021-03-22 10:02:30',2),(103,'2021-03-22 02:02:30','账号3','姓名3',10,'2021-03-22 10:02:30',3),(104,'2021-03-22 02:02:30','账号4','姓名4',10,'2021-03-22 10:02:30',4),(105,'2021-03-22 02:02:30','账号5','姓名5',10,'2021-03-22 10:02:30',5),(106,'2021-03-22 02:02:30','账号6','姓名6',10,'2021-03-22 10:02:30',6);
/*!40000 ALTER TABLE `huiyuanchongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jishileixing`
--

DROP TABLE IF EXISTS `jishileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jishileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jishileixing` varchar(200) DEFAULT NULL COMMENT '技师类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378623348 DEFAULT CHARSET=utf8 COMMENT='技师类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jishileixing`
--

LOCK TABLES `jishileixing` WRITE;
/*!40000 ALTER TABLE `jishileixing` DISABLE KEYS */;
INSERT INTO `jishileixing` VALUES (61,'2021-03-22 02:02:30','技师类型1'),(62,'2021-03-22 02:02:30','技师类型2'),(63,'2021-03-22 02:02:30','技师类型3'),(64,'2021-03-22 02:02:30','技师类型4'),(65,'2021-03-22 02:02:30','技师类型5'),(66,'2021-03-22 02:02:30','技师类型6'),(1616378616180,'2021-03-22 02:03:35','发型师'),(1616378623347,'2021-03-22 02:03:42','美容师');
/*!40000 ALTER TABLE `jishileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jishiyuyue`
--

DROP TABLE IF EXISTS `jishiyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jishiyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jishileixing` varchar(200) DEFAULT NULL COMMENT '技师类型',
  `jishixingming` varchar(200) DEFAULT NULL COMMENT '技师姓名',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378917295 DEFAULT CHARSET=utf8 COMMENT='技师预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jishiyuyue`
--

LOCK TABLES `jishiyuyue` WRITE;
/*!40000 ALTER TABLE `jishiyuyue` DISABLE KEYS */;
INSERT INTO `jishiyuyue` VALUES (41,'2021-03-22 02:02:30','技师类型1','技师姓名1','职位名称1','2021-03-22 10:02:30','账号1','姓名1','手机1'),(42,'2021-03-22 02:02:30','技师类型2','技师姓名2','职位名称2','2021-03-22 10:02:30','账号2','姓名2','手机2'),(43,'2021-03-22 02:02:30','技师类型3','技师姓名3','职位名称3','2021-03-22 10:02:30','账号3','姓名3','手机3'),(44,'2021-03-22 02:02:30','技师类型4','技师姓名4','职位名称4','2021-03-22 10:02:30','账号4','姓名4','手机4'),(45,'2021-03-22 02:02:30','技师类型5','技师姓名5','职位名称5','2021-03-22 10:02:30','账号5','姓名5','手机5'),(46,'2021-03-22 02:02:30','技师类型6','技师姓名6','职位名称6','2021-03-22 10:02:30','账号6','姓名6','手机6'),(1616378917294,'2021-03-22 02:08:36','美容师','张三','技术','2021-03-24 12:08:23','11','11','12345678912');
/*!40000 ALTER TABLE `jishiyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taocangoumai`
--

DROP TABLE IF EXISTS `taocangoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taocangoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `taocanleixing` varchar(200) DEFAULT NULL COMMENT '套餐类型',
  `taocanmingcheng` varchar(200) DEFAULT NULL COMMENT '套餐名称',
  `taocanjiage` varchar(200) DEFAULT NULL COMMENT '套餐价格',
  `goumaishuliang` varchar(200) DEFAULT NULL COMMENT '购买数量',
  `zongjine` varchar(200) DEFAULT NULL COMMENT '总金额',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378956146 DEFAULT CHARSET=utf8 COMMENT='套餐购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taocangoumai`
--

LOCK TABLES `taocangoumai` WRITE;
/*!40000 ALTER TABLE `taocangoumai` DISABLE KEYS */;
INSERT INTO `taocangoumai` VALUES (91,'2021-03-22 02:02:30','套餐类型1','套餐名称1','套餐价格1','购买数量1','总金额1','2021-03-22 10:02:30','账号1','姓名1','13823888881','未支付'),(92,'2021-03-22 02:02:30','套餐类型2','套餐名称2','套餐价格2','购买数量2','总金额2','2021-03-22 10:02:30','账号2','姓名2','13823888882','未支付'),(93,'2021-03-22 02:02:30','套餐类型3','套餐名称3','套餐价格3','购买数量3','总金额3','2021-03-22 10:02:30','账号3','姓名3','13823888883','未支付'),(94,'2021-03-22 02:02:30','套餐类型4','套餐名称4','套餐价格4','购买数量4','总金额4','2021-03-22 10:02:30','账号4','姓名4','13823888884','未支付'),(95,'2021-03-22 02:02:30','套餐类型5','套餐名称5','套餐价格5','购买数量5','总金额5','2021-03-22 10:02:30','账号5','姓名5','13823888885','未支付'),(96,'2021-03-22 02:02:30','套餐类型6','套餐名称6','套餐价格6','购买数量6','总金额6','2021-03-22 10:02:30','账号6','姓名6','13823888886','未支付'),(1616378956145,'2021-03-22 02:09:15','美发','剪发','12','1','12','2021-03-24 10:10:07','11','11','12345678912','已支付');
/*!40000 ALTER TABLE `taocangoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taocanleixing`
--

DROP TABLE IF EXISTS `taocanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taocanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `taocanleixing` varchar(200) DEFAULT NULL COMMENT '套餐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378705860 DEFAULT CHARSET=utf8 COMMENT='套餐类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taocanleixing`
--

LOCK TABLES `taocanleixing` WRITE;
/*!40000 ALTER TABLE `taocanleixing` DISABLE KEYS */;
INSERT INTO `taocanleixing` VALUES (81,'2021-03-22 02:02:30','套餐类型1'),(82,'2021-03-22 02:02:30','套餐类型2'),(83,'2021-03-22 02:02:30','套餐类型3'),(84,'2021-03-22 02:02:30','套餐类型4'),(85,'2021-03-22 02:02:30','套餐类型5'),(86,'2021-03-22 02:02:30','套餐类型6'),(1616378699932,'2021-03-22 02:04:59','美容'),(1616378705859,'2021-03-22 02:05:05','美发');
/*!40000 ALTER TABLE `taocanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taocanxinxi`
--

DROP TABLE IF EXISTS `taocanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taocanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `taocanleixing` varchar(200) DEFAULT NULL COMMENT '套餐类型',
  `taocanmingcheng` varchar(200) DEFAULT NULL COMMENT '套餐名称',
  `taocanxiangqing` longtext COMMENT '套餐详情',
  `taocanjiage` varchar(200) DEFAULT NULL COMMENT '套餐价格',
  `taocanzhaopian` varchar(200) DEFAULT NULL COMMENT '套餐照片',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616378769734 DEFAULT CHARSET=utf8 COMMENT='套餐信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taocanxinxi`
--

LOCK TABLES `taocanxinxi` WRITE;
/*!40000 ALTER TABLE `taocanxinxi` DISABLE KEYS */;
INSERT INTO `taocanxinxi` VALUES (71,'2021-03-22 02:02:30','套餐类型1','套餐名称1','套餐详情1','套餐价格1','http://localhost:8080/jspm5tu83/upload/taocanxinxi_taocanzhaopian1.jpg',1,1,'2021-03-22 10:02:30'),(72,'2021-03-22 02:02:30','套餐类型2','套餐名称2','套餐详情2','套餐价格2','http://localhost:8080/jspm5tu83/upload/taocanxinxi_taocanzhaopian2.jpg',2,2,'2021-03-22 10:06:43'),(73,'2021-03-22 02:02:30','套餐类型3','套餐名称3','套餐详情3','套餐价格3','http://localhost:8080/jspm5tu83/upload/taocanxinxi_taocanzhaopian3.jpg',3,3,'2021-03-22 10:02:30'),(74,'2021-03-22 02:02:30','套餐类型4','套餐名称4','套餐详情4','套餐价格4','http://localhost:8080/jspm5tu83/upload/taocanxinxi_taocanzhaopian4.jpg',4,4,'2021-03-22 10:02:30'),(75,'2021-03-22 02:02:30','套餐类型5','套餐名称5','套餐详情5','套餐价格5','http://localhost:8080/jspm5tu83/upload/taocanxinxi_taocanzhaopian5.jpg',5,5,'2021-03-22 10:02:30'),(76,'2021-03-22 02:02:30','套餐类型6','套餐名称6','套餐详情6','套餐价格6','http://localhost:8080/jspm5tu83/upload/taocanxinxi_taocanzhaopian6.jpg',6,6,'2021-03-22 10:02:30'),(1616378739561,'2021-03-22 02:05:39','美容','洗脸','和港口和观看记录就立刻就可以将蛮好看环境苦苦\r\n','12','http://localhost:8080/jspm5tu83/upload/1616378733514.jpg',0,0,NULL),(1616378769733,'2021-03-22 02:06:09','美发','剪发','会尽快尽快将邻居  你们呢\r\n','12','http://localhost:8080/jspm5tu83/upload/1616378757244.jpg',2,2,'2021-03-22 10:09:18');
/*!40000 ALTER TABLE `taocanxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','imvounucppthb7z1stwav3xbjx64jal8','2021-03-22 02:03:02','2021-03-22 12:11:16'),(2,1616378813932,'11','huiyuan','会员','ztuvd1ggel7jo44abgp5nxos8rucvnzp','2021-03-22 02:07:00','2021-03-22 03:07:01'),(3,1616379021851,'12','yuangong','员工','i7if9zkn8gl2q0bdynp29g0p0gy8pxre','2021-03-22 02:10:29','2021-03-22 03:10:30');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-22 02:02:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhiweimingcheng` varchar(200) DEFAULT NULL COMMENT '职位名称',
  `jishileixing` varchar(200) DEFAULT NULL COMMENT '技师类型',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616379021852 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (21,'2021-03-22 02:02:30','员工1','姓名1','123456','职位名称1','技师类型1','男','13823888881','773890001@qq.com','http://localhost:8080/jspm5tu83/upload/yuangong_zhaopian1.jpg'),(22,'2021-03-22 02:02:30','员工2','姓名2','123456','职位名称2','技师类型2','男','13823888882','773890002@qq.com','http://localhost:8080/jspm5tu83/upload/yuangong_zhaopian2.jpg'),(23,'2021-03-22 02:02:30','员工3','姓名3','123456','职位名称3','技师类型3','男','13823888883','773890003@qq.com','http://localhost:8080/jspm5tu83/upload/yuangong_zhaopian3.jpg'),(24,'2021-03-22 02:02:30','员工4','姓名4','123456','职位名称4','技师类型4','男','13823888884','773890004@qq.com','http://localhost:8080/jspm5tu83/upload/yuangong_zhaopian4.jpg'),(25,'2021-03-22 02:02:30','员工5','姓名5','123456','职位名称5','技师类型5','男','13823888885','773890005@qq.com','http://localhost:8080/jspm5tu83/upload/yuangong_zhaopian5.jpg'),(26,'2021-03-22 02:02:30','员工6','姓名6','123456','职位名称6','技师类型6','男','13823888886','773890006@qq.com','http://localhost:8080/jspm5tu83/upload/yuangong_zhaopian6.jpg'),(1616379021851,'2021-03-22 02:10:21','12','12','12','技术','发型师','男','12345678912','12@qq.com','http://localhost:8080/jspm5tu83/upload/1616379068216.jpg');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongdaka`
--

DROP TABLE IF EXISTS `yuangongdaka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongdaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `kaoqinleixing` varchar(200) NOT NULL COMMENT '考勤类型',
  `dakashijian` datetime NOT NULL COMMENT '打卡时间',
  `longitude` float DEFAULT NULL COMMENT '经度',
  `latitude` float DEFAULT NULL COMMENT '纬度',
  `fulladdress` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616379113960 DEFAULT CHARSET=utf8 COMMENT='员工打卡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongdaka`
--

LOCK TABLES `yuangongdaka` WRITE;
/*!40000 ALTER TABLE `yuangongdaka` DISABLE KEYS */;
INSERT INTO `yuangongdaka` VALUES (31,'2021-03-22 02:02:30','工号1','姓名1','上班','2021-03-22 10:02:30',1,1,'宇宙银河系地球1号'),(32,'2021-03-22 02:02:30','工号2','姓名2','上班','2021-03-22 10:02:30',2,2,'宇宙银河系地球2号'),(33,'2021-03-22 02:02:30','工号3','姓名3','上班','2021-03-22 10:02:30',3,3,'宇宙银河系地球3号'),(34,'2021-03-22 02:02:30','工号4','姓名4','上班','2021-03-22 10:02:30',4,4,'宇宙银河系地球4号'),(35,'2021-03-22 02:02:30','工号5','姓名5','上班','2021-03-22 10:02:30',5,5,'宇宙银河系地球5号'),(36,'2021-03-22 02:02:30','工号6','姓名6','上班','2021-03-22 10:02:30',6,6,'宇宙银河系地球6号'),(1616379113959,'2021-03-22 02:11:53','12','12','上班','2021-03-23 17:18:23',116.108,24.3106,'广东省梅州市梅江区西郊街道月影塘路');
/*!40000 ALTER TABLE `yuangongdaka` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 22:22:24

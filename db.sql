/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - bzrzl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bzrzl` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bzrzl`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `exam_name` varchar(200) DEFAULT NULL COMMENT '考试名称 Search111 ',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目  Search111 ',
  `fraction` decimal(10,4) DEFAULT NULL COMMENT '分数  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`yonghu_id`,`exam_name`,`kemu_types`,`fraction`,`create_time`) values (1,3,'第一次考试',3,'98.0000','2021-03-04 19:18:07'),(2,3,'第一次考试',2,'10.0000','2021-03-04 19:19:32'),(3,1,'第一次考试',3,'18.0000','2021-03-04 19:19:43'),(4,3,'第二次考试',2,'10.0000','2021-03-05 11:32:35'),(5,3,'第二次考试',1,'19.0000','2021-03-05 11:35:39'),(6,2,'333',3,'19.0000','2021-03-05 15:55:48'),(7,3,'333',3,'21.0000','2021-03-05 15:56:17');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-03 21:19:58'),(2,'sex_types','性别',2,'女',NULL,'2021-03-03 21:19:58'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-03 21:19:58'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-03 21:19:58'),(5,'yonghu_types','学生状态',1,'毕业',NULL,'2021-03-03 21:19:58'),(6,'yonghu_types','学生状态',2,'在读',NULL,'2021-03-03 21:19:58'),(7,'qingjia_types','请假状态',1,'未审核',NULL,'2021-03-03 21:19:58'),(8,'qingjia_types','请假状态',2,'审核通过',NULL,'2021-03-03 21:19:58'),(9,'qingjia_types','请假状态',3,'审核不通过',NULL,'2021-03-03 21:19:58'),(10,'tongzhi_types','通知类型',1,'普通通知',NULL,'2021-03-03 21:19:58'),(11,'tongzhi_types','通知类型',2,'紧急通知',NULL,'2021-03-03 21:19:58'),(12,'kemu_types','科目类型',1,'数学',NULL,'2021-03-03 21:19:58'),(13,'kemu_types','科目类型',2,'语文',NULL,'2021-03-03 21:19:58'),(14,'kemu_types','科目类型',3,'英语',NULL,'2021-03-03 21:19:58'),(15,'yujing_types','预警类型',1,'学业预警',NULL,'2021-03-03 21:19:58'),(16,'yujing_types','预警类型',2,'成绩预警',NULL,'2021-03-03 21:19:58');

/*Table structure for table `jiazhang` */

DROP TABLE IF EXISTS `jiazhang`;

CREATE TABLE `jiazhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 Search111 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='家长';

/*Data for the table `jiazhang` */

insert  into `jiazhang`(`id`,`yonghu_id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`my_photo`,`create_time`) values (1,3,'a33','123456','a3399','17703789933','410224199610232033',2,'http://localhost:8080/bzrzl/file/download?fileName=1614941996846.jpg','2021-03-04 13:40:29'),(2,1,'a11','123456','a11','17703789991','410224199610232012',2,'http://localhost:8080/bzrzl/file/download?fileName=1614851512373.jpg','2021-03-04 17:51:59'),(3,4,'a44','123456','a44','17703789944','410224199610232044',1,'http://localhost:8080/bzrzl/file/download?fileName=1614941435784.jpg','2021-03-05 18:50:36');

/*Table structure for table `jiazhangjiaoliu` */

DROP TABLE IF EXISTS `jiazhangjiaoliu`;

CREATE TABLE `jiazhangjiaoliu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `users_id` int(11) DEFAULT NULL COMMENT '老师id',
  `users_content` varchar(200) DEFAULT NULL COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `jiazhang_id` int(11) DEFAULT NULL COMMENT '家长id',
  `jiazhang_content` varchar(200) DEFAULT NULL COMMENT '家长回复',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='家长交流';

/*Data for the table `jiazhangjiaoliu` */

insert  into `jiazhangjiaoliu`(`id`,`users_id`,`users_content`,`insert_time`,`jiazhang_id`,`jiazhang_content`,`update_time`,`create_time`) values (1,6,'给a33家长的留言\r\n','2021-03-04 15:12:24',1,'‍\r\n',NULL,'2021-03-04 15:12:24'),(2,6,'33333\r\n','2021-03-04 19:21:33',1,'‍1111\r\n','2021-03-05 18:57:25','2021-03-04 19:21:33'),(3,6,'111111\r\n','2021-03-04 19:21:48',2,'‍\r\n',NULL,'2021-03-04 19:21:48'),(4,6,'您的孩子打架了,麻烦过来一趟\r\n','2021-03-05 18:51:33',3,'‍\r\n',NULL,'2021-03-05 18:51:33');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `onday` varchar(200) DEFAULT NULL COMMENT '请假开始时间  Search111 ',
  `downday` varchar(200) DEFAULT NULL COMMENT '请假结束时间   Search111 ',
  `qingjia_number` int(11) DEFAULT NULL COMMENT '请假天数  Search111 ',
  `qingjia_types` int(11) DEFAULT NULL COMMENT '请假状态  Search111 ',
  `liyou_content` varchar(200) DEFAULT NULL COMMENT '理由',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '审批时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='请假';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`yonghu_id`,`onday`,`downday`,`qingjia_number`,`qingjia_types`,`liyou_content`,`update_time`,`create_time`) values (1,3,'2021-03-04','2021-03-06',2,3,'98\r\n','2021-02-10 11:08:23','2021-03-04 15:35:31'),(4,2,'2021-03-21','2021-03-31',10,2,'9999\r\n','2021-03-05 16:45:49','2021-03-05 16:42:58'),(5,2,'2021-03-19','2021-03-27',8,3,'98\r\n','2021-03-05 16:45:53','2021-03-05 16:44:34'),(6,2,'2021-03-18','2021-03-20',2,3,'98\r\n','2021-03-05 18:49:10','2021-03-04 16:47:27'),(7,2,'2021-03-19','2021-03-28',9,2,'请假理由','2021-03-05 16:49:00','2021-03-03 16:48:17'),(14,3,'2021-03-21','2021-03-31',10,2,'请假天数为10','2021-03-05 16:45:49','2021-03-05 16:42:58'),(15,2,'2021-03-07','2021-03-24',17,1,'家里有事情1111\r\n',NULL,'2021-03-05 19:04:14');

/*Table structure for table `shixi` */

DROP TABLE IF EXISTS `shixi`;

CREATE TABLE `shixi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shixigongsi` varchar(200) DEFAULT NULL COMMENT '实习公司 Search111 ',
  `shixi_content` varchar(200) DEFAULT NULL COMMENT '实习详情',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '实习开始时间  Search111 ',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '实习结束时间  Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='实习';

/*Data for the table `shixi` */

insert  into `shixi`(`id`,`yonghu_id`,`shixigongsi`,`shixi_content`,`start_time`,`end_time`,`create_time`) values (1,3,'北京恒瑞公司','开发和测试\r\n','2021-03-12 00:00:00','2021-03-13 00:00:00','2021-03-04 19:44:12'),(2,2,'111','999\r\n','2021-03-07 00:00:00','2021-03-13 00:00:00','2021-03-04 21:04:19'),(3,4,'北京航天公司','实习详情<img src=\"http://localhost:8080/bzrzl/upload/1614941592628.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/bzrzl/upload/1614941592628.jpg\">\r\n','2021-03-13 00:00:00','2021-04-02 00:00:00','2021-03-05 18:53:22');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','vg1owkzodrtcxn1o6xot3le96cytizgf','2020-12-17 17:09:11','2021-02-03 11:47:45'),(2,1,'1','dangyuan','党员','lrlu96f87l1btzsvhmq0cx248eoowb3t','2020-12-17 17:17:02','2020-12-17 18:17:03'),(3,1,'1','zhibu','支部','w8efhq9xkrz3c3fz6dgztk9trch8dnk8','2020-12-17 17:18:21','2020-12-17 18:18:21'),(4,1608197383165,'001','zhibu','支部','7q33efdzk68psx37dpjek8p8h6uwq7ow','2020-12-17 17:36:24','2021-01-22 10:38:07'),(5,1608198583190,'001','dangyuan','党员','p64k1bj6iwvrditvy4jzanyq44zbq6ed','2020-12-17 17:52:50','2020-12-17 18:52:50'),(6,1608199057450,'003','dangyuan','党员','g26ivuguh0qebktkl0hyj1jymxt2svnn','2020-12-17 18:03:00','2020-12-17 19:03:01'),(7,1608199181916,'004','zhibu','支部','13u05cup4ivaoeyin2shic24xi7oge2f','2020-12-17 18:03:40','2020-12-17 19:03:41'),(8,6,'admin1','users','学院管理员','y46uj8gv4ezllt5p5ufrge1f2bpjv3cs','2021-01-29 14:52:36','2021-02-03 11:47:53'),(9,7,'admin2','users','宿舍管理员','qrx3mk3gn2e5ye90s0ab3gq54nouf8rw','2021-02-02 12:02:15','2021-02-03 11:59:01'),(10,10,'11','users','学生','u31dzvfagnj9tppkjr9nvxtzbhukx5vx','2021-02-02 13:21:38','2021-02-03 12:39:22'),(11,1,'abo','users','学院管理员','f2ul3z66wpuo4a0rl77sk921n9yf8mkb','2021-02-03 10:52:40','2021-02-03 11:52:40'),(12,8,'admin3','users','财务管理员','9ymzdcsml2b96mln6x6cs3i2xi661643','2021-02-03 11:05:39','2021-02-03 15:10:11'),(13,11,'999','users','学生','mya6tv1l67d8s6r6tan7ezy7z4w8lgzw','2021-02-03 11:29:09','2021-02-03 14:45:27'),(14,4,'999','yonghu','用户','1ahtqregeq3nku278h35h1479bb0iy04','2021-02-04 13:40:27','2021-02-23 16:37:12'),(15,1,'99','yonghu','用户','8ql2zqwd0wm3ugg19omnr4q6bs9dvl61','2021-02-04 14:52:51','2021-02-20 19:03:24'),(16,7,'admin2','users','初审管理员','3mqhpytktmhhpz29r6dtrbynyvtl525i','2021-02-04 15:50:09','2021-02-22 11:07:10'),(17,3,'77','users','用户','ilp5dd2mcbvdfe7bw72ngwe6ez3o44m1','2021-02-18 09:42:20','2021-02-22 11:05:19'),(18,6,'admin1','users','管理员','6jogsctjxjcegrzbsdi214hq9vj8v6gv','2021-02-19 16:42:49','2021-03-05 21:31:24'),(19,6,'88','yonghu','用户','yw7yxi7we78b3vh9kkvl2sk98m0pl24c','2021-02-20 10:35:45','2021-02-20 11:39:03'),(20,2,'22','yonghu','用户','m3qi8ns8kwjwk2fbb3x74ppv5ftmf00p','2021-02-20 10:54:51','2021-02-22 10:27:37'),(21,8,'admin3','users','政审管理员','p1vflp8rs17msr05d6vwo622f1bk095c','2021-02-20 11:39:06','2021-02-22 11:09:33'),(22,9,'admin4','users','武装部管理员','0ljqhzh9zhhlq3ftkczskvs9ur5oj1fy','2021-02-20 13:31:20','2021-02-20 19:06:45'),(23,5,'55','yonghu','用户','jzxw4912iminddl1v1csr7md5g9z04uz','2021-02-20 17:25:51','2021-02-23 17:15:21'),(24,13,'77','users','舍管管理员','gt28ff27xhxzmvjc7oy74s3jgfr7gstx','2021-02-23 15:21:29','2021-02-23 16:21:29'),(25,14,'admin2','users','舍管管理员','wm7ners2segz27n1g4sojmx8ios2d0jk','2021-02-23 16:03:05','2021-02-23 17:03:47'),(26,14,'admin2','users','售票管理员','iwqonlhzy22vjgsh90jxc016vvpr8i1e','2021-02-24 13:54:16','2021-02-24 15:53:23'),(27,15,'admin3','users','检票管理员','97icqm027wx11oba95zlnjl613h2haeq','2021-02-24 13:57:11','2021-02-24 16:26:45'),(28,18,'78','users','售票管理员','bxbiasroyq8hgxljhgygmils0450zegz','2021-02-24 14:53:44','2021-02-24 15:53:45'),(29,12,'99','yonghu','用户','3gh882ib9001cag4ua5bzg0v8h8smi7e','2021-03-01 16:52:26','2021-03-01 18:14:30'),(30,7,'a1','yonghu','用户','m7whd20qf9h0tb8k2tkg0c0v9wa6s3x5','2021-03-01 21:06:49','2021-03-02 12:08:40'),(31,8,'a2','yonghu','用户','94sgqh9kog3hrvaej848n42ujqrpl9pa','2021-03-02 11:09:17','2021-03-02 12:31:59'),(32,13,'a8','yonghu','用户','0tvaz76fd0qt7ngvckt7yqn5hffyesbn','2021-03-02 11:45:55','2021-03-02 14:10:18'),(33,15,'a6','yonghu','用户','u1gplzr2wfrg122mhd8hc9ocr55urh2i','2021-03-02 14:07:02','2021-03-02 15:16:52'),(34,1,'a1','yonghu','学生','jl1r15k475jqu6pvl9qgly3ay60wowgl','2021-03-04 19:48:44','2021-03-05 20:25:30'),(35,2,'a2','yonghu','学生','l32a5gg2vbqx6rcjguhjvsjwqbksu1pg','2021-03-05 09:54:44','2021-03-05 20:24:33'),(36,1,'a33','jiazhang','家长','vllwk0gwkcvlskchdlbd6sjpjme91d5a','2021-03-05 17:58:11','2021-03-05 19:59:27');

/*Table structure for table `tongzhi` */

DROP TABLE IF EXISTS `tongzhi`;

CREATE TABLE `tongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tongzhi_types` int(11) DEFAULT NULL COMMENT '通知类型  Search111',
  `tongzhi_content` varchar(200) DEFAULT NULL COMMENT '通知内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='班会通知';

/*Data for the table `tongzhi` */

insert  into `tongzhi`(`id`,`tongzhi_types`,`tongzhi_content`,`insert_time`,`create_time`) values (1,2,'明天晚上在班级集合1\r\n','2021-03-04 16:32:07','2021-03-04 16:32:07'),(2,1,'明天晚上集合\r\n','2021-03-05 18:49:48','2021-03-05 18:49:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xiaoyoujiaoliu` */

DROP TABLE IF EXISTS `xiaoyoujiaoliu`;

CREATE TABLE `xiaoyoujiaoliu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `insertyonghu_id` int(11) DEFAULT NULL COMMENT '提问用户id',
  `insert_content` varchar(200) DEFAULT NULL COMMENT '提问内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `updateyonghu_id` int(11) DEFAULT NULL COMMENT '回复用户id',
  `update_content` varchar(200) DEFAULT NULL COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='校友交流';

/*Data for the table `xiaoyoujiaoliu` */

insert  into `xiaoyoujiaoliu`(`id`,`insertyonghu_id`,`insert_content`,`insert_time`,`updateyonghu_id`,`update_content`,`update_time`,`create_time`) values (1,1,'9991\r\n','2021-03-04 21:14:45',2,'‍9988\r\n','2021-03-05 10:24:53','2021-03-04 21:14:45'),(2,2,'9998\r\n','2021-03-05 19:25:01',1,'‍9999\r\n','2021-03-05 19:25:42','2021-03-05 19:25:01');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  Search111',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `yonghu_types` int(11) DEFAULT NULL COMMENT '是否毕业',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`yonghu_types`,`create_time`) values (1,'a1','123456','a1','17703789991','410224199610232011',2,'http://localhost:8080/bzrzl/file/download?fileName=1614851470842.jpg','汉',2,'四川成都',2,'2021-03-04 11:28:41'),(2,'a2','123456','张三','17703789992','410224199610232012',2,'http://localhost:8080/bzrzl/file/download?fileName=1614851458585.jpg','汉1',2,'浙江杭州',2,'2021-03-04 11:29:21'),(3,'a3','123456','a3','17703789993','410224199610232013',1,'http://localhost:8080/bzrzl/file/download?fileName=1614851447114.jpg','维吾尔族',2,'浙江温州',1,'2021-03-04 11:37:50'),(4,'a4','123456','a4','17703789994','410224199610232014',1,'http://localhost:8080/bzrzl/file/download?fileName=1614941263752.jpg','汉',2,'浙江杭州',2,'2021-03-05 18:47:58');

/*Table structure for table `yujing` */

DROP TABLE IF EXISTS `yujing`;

CREATE TABLE `yujing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yujing_types` int(11) DEFAULT NULL COMMENT '预警类型  Search111',
  `yujing_content` varchar(200) DEFAULT NULL COMMENT '预警内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '预警时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='学业预警';

/*Data for the table `yujing` */

insert  into `yujing`(`id`,`yonghu_id`,`yujing_types`,`yujing_content`,`insert_time`,`create_time`) values (1,3,1,'9999\r\n','2021-03-04 19:37:59','2021-03-04 19:37:59'),(2,3,1,'马上毕业了,注意言行\r\n','2021-03-05 18:52:46','2021-03-05 18:52:46');

/*Table structure for table `zhusu` */

DROP TABLE IF EXISTS `zhusu`;

CREATE TABLE `zhusu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='住宿';

/*Data for the table `zhusu` */

insert  into `zhusu`(`id`,`yonghu_id`,`building`,`unit`,`room`,`create_time`) values (1,3,'9','3','301','2021-03-04 19:27:19'),(2,3,'9','9+','901','2021-03-04 19:34:47'),(3,3,'9','9','989','2021-03-05 18:52:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
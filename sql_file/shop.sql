/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-03-11 15:18:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clerk
-- ----------------------------
DROP TABLE IF EXISTS `clerk`;
CREATE TABLE `clerk` (
  `clerkid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `clerkname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `identity` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clerkid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clerk
-- ----------------------------
INSERT INTO `clerk` VALUES ('1', '张三', '123456', '男', '1', '112413');
INSERT INTO `clerk` VALUES ('2', '李四', '123456', '男', '2', '156495');
INSERT INTO `clerk` VALUES ('4', '赵柳', '15679', '男', '2', '1232456');
INSERT INTO `clerk` VALUES ('6', '刘大', 'd5262', '女', '2', '6559655');
INSERT INTO `clerk` VALUES ('9', '贾可乐', '1515616', '男', '2', '15162626');
INSERT INTO `clerk` VALUES ('10', '真好笑', '151626', '女', '2', '15616556');
INSERT INTO `clerk` VALUES ('11', '高小宝', '15469', '男', '2', '154151');
INSERT INTO `clerk` VALUES ('12', '王二莽子', '1456226', '男', '2', '154626');
INSERT INTO `clerk` VALUES ('13', '张飞', '15162626', '男', '2', '154621626');
INSERT INTO `clerk` VALUES ('14', '李猛虎', '156226', '男', '2', '1562626');
INSERT INTO `clerk` VALUES ('15', '苏蔷薇', '26262626', '男', '2', '1625626');
INSERT INTO `clerk` VALUES ('16', '王小明', '123456', '男', '2', '15166576');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `goodid` int(11) NOT NULL AUTO_INCREMENT,
  `goodname` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL COMMENT '类别',
  `price` int(10) DEFAULT NULL COMMENT '售价',
  `number` int(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL COMMENT '状态',
  `photo` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goodid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('1', '衣服', '家具类', '12', '54', '上架', 'blouse.jpg.png', '好吃');
INSERT INTO `good` VALUES ('3', 'babycare妈咪包双肩包可手提', '食品类', '12', '20', '上架', 'blouse.png', '5');
INSERT INTO `good` VALUES ('4', '裙子', '食品类', '15', '44', '上架', 'dress.jpg.png', '45');
INSERT INTO `good` VALUES ('5', '玩具驴', '启智类', '5', '45', '上架', 'faded-short-sleeves-tshirt.jpg.png', '百事');
INSERT INTO `good` VALUES ('6', '毛绒兔', '启智类', '5', '44', '上架', 'faded-short-tshirt.jpg.png', '可口');
INSERT INTO `good` VALUES ('7', '柜子', '家具类', '500', '45', '上架', 'printed.jpg.png', '可口');
INSERT INTO `good` VALUES ('8', '婴儿床', '食品类', '1200', '5', '上架', 'printed-chiffon-bad.jpg.png', '兼顾');

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent` (
  `indentid` int(255) NOT NULL AUTO_INCREMENT,
  `indentname` varchar(255) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`indentid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES ('1', '水果', '1', '25', '2020-03-08 17:18:29', '1');
INSERT INTO `indent` VALUES ('2', '蔬菜', '2', '50', '2020-03-08 17:20:38', '2');
INSERT INTO `indent` VALUES ('4', '炸鸡', '1', null, '2020-03-09 11:55:24', '1');
INSERT INTO `indent` VALUES ('5', '可乐', '1', null, '2020-03-09 12:09:38', '2');
INSERT INTO `indent` VALUES ('6', '玩具租赁', '2', null, '2020-03-09 12:10:28', '2');
INSERT INTO `indent` VALUES ('7', '可乐', '1', null, '2020-03-09 12:27:35', '1');
INSERT INTO `indent` VALUES ('8', '可乐', '2', null, '2020-03-09 12:28:54', '1');
INSERT INTO `indent` VALUES ('9', '可乐', '1', '5', '2020-03-09 12:30:09', '1');
INSERT INTO `indent` VALUES ('10', '可乐', '1', '5', '2020-03-09 12:31:58', '1');
INSERT INTO `indent` VALUES ('11', '可乐', '1', '5', '2020-03-09 12:33:12', '2');
INSERT INTO `indent` VALUES ('12', '可乐', '5', '25', '2020-03-09 12:33:43', '1');
INSERT INTO `indent` VALUES ('13', '会员', '1', '500', '2020-03-09 14:43:30', '1');
INSERT INTO `indent` VALUES ('14', '雪碧', '1', '5', '2020-03-09 20:01:53', '1');
INSERT INTO `indent` VALUES ('15', '裙子', '1', '15', '2020-03-10 14:34:39', '1');
INSERT INTO `indent` VALUES ('16', '衣服', '5', '60', '2020-03-11 09:00:11', '3');

-- ----------------------------
-- Table structure for saas
-- ----------------------------
DROP TABLE IF EXISTS `saas`;
CREATE TABLE `saas` (
  `saasid` int(11) NOT NULL AUTO_INCREMENT,
  `saasname` varchar(255) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `photo` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`saasid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of saas
-- ----------------------------
INSERT INTO `saas` VALUES ('1', '会员', '500', '上架', 'banner2.jpg', '月');
INSERT INTO `saas` VALUES ('3', '玩具租赁', '20', '上架', 'banner5.jpg', '小时');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '李二狗', '242425', '男', '527275282');
INSERT INTO `user` VALUES ('2', '张三炮', '1652626', '女', '165265262');
INSERT INTO `user` VALUES ('3', '张晓明', '123456', '女', '1565684526');

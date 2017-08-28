/*
Navicat MySQL Data Transfer

Source Server         : liuxin
Source Server Version : 50521
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50521
File Encoding         : 65001

Date: 2017-08-28 19:43:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t-blog-category
-- ----------------------------
DROP TABLE IF EXISTS `t-blog-category`;
CREATE TABLE `t-blog-category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t-blog-category
-- ----------------------------
INSERT INTO `t-blog-category` VALUES ('1', 'Web', '0');
INSERT INTO `t-blog-category` VALUES ('2', 'Mobile', '0');
INSERT INTO `t-blog-category` VALUES ('3', 'Design', '0');

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'liuxin', '123456');

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `big_img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `post_data` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `clicked` int(11) DEFAULT '0',
  `cate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `fk_blog_cate` (`cate_id`),
  CONSTRAINT `fk_blog_cate` FOREIGN KEY (`cate_id`) REFERENCES `t-blog-category` (`cate_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES ('1', '哈哈哈哈哈哈哈啊哈哈哈', 0xE5BC80E5BF83, 'puload/pi.jpg', 'puload/pi.jpg', '2017-08-25 17:04:41', '10', '1');
INSERT INTO `t_blog` VALUES ('2', '嘻嘻嘻嘻嘻嘻', 0xE595A6E595A6E595A6, 'puload/pi1.jpg', 'puload/pi1.jpg', '2017-08-28 19:40:54', '15', '1');
INSERT INTO `t_blog` VALUES ('3', '呵呵呵呵呵', 0x313233, 'puload/pi2.jpg', 'puload/pi2.jpg', '2017-08-25 17:04:50', '11', '2');
INSERT INTO `t_blog` VALUES ('4', '呀呀呀呀', 0xE59180E59180E59180, 'puload/pi3.jpg', 'puload/pi3.jpg', '2017-08-25 17:04:54', '29', '1');
INSERT INTO `t_blog` VALUES ('5', '嘎嘎嘎嘎嘎嘎', 0xE5988EE5988E, 'puload/pi4.jpg', 'puload/pi4.jpg', '2017-08-25 17:04:59', '4', '1');
INSERT INTO `t_blog` VALUES ('6', '哈哈哈哈哈哈哈啊哈哈哈', 0xE5BC80E5BF83, 'puload/pi5.jpg', 'puload/pi5.jpg', '2017-08-28 19:41:00', '10', '1');
INSERT INTO `t_blog` VALUES ('7', '呵呵呵呵呵', 0x313233, 'puload/pi2.jpg', 'puload/pi2.jpg', '2017-08-25 17:04:50', '11', '2');
INSERT INTO `t_blog` VALUES ('8', '嘻嘻嘻嘻嘻嘻', 0xE595A6E595A6E595A6, 'puload/pi2.jpg', 'puload/pi4.jpg', '2017-08-28 19:41:08', '15', '1');
INSERT INTO `t_blog` VALUES ('9', '呀呀呀呀', 0xE59180E59180E59180, 'puload/pi3.jpg', 'puload/pi3.jpg', '2017-08-25 17:04:54', '29', '1');
INSERT INTO `t_blog` VALUES ('10', '嘎嘎嘎嘎嘎嘎', 0xE5988EE5988E, 'puload/pi4.jpg', 'puload/pi4.jpg', '2017-08-25 17:04:59', '4', '1');
INSERT INTO `t_blog` VALUES ('11', '嘻嘻嘻嘻嘻嘻', 0xE595A6E595A6E595A6, 'puload/pi2.jpg', 'puload/pi1.jpg', '2017-08-28 19:41:16', '15', '1');
INSERT INTO `t_blog` VALUES ('12', '呵呵呵呵呵', 0x313233, 'puload/pi5.jpg', 'puload/pi5.jpg', '2017-08-28 19:42:27', '11', '2');
INSERT INTO `t_blog` VALUES ('13', '嘎嘎嘎嘎嘎嘎', 0xE5988EE5988E, 'puload/pi4.jpg', 'puload/pi4.jpg', '2017-08-25 17:04:59', '4', '1');
INSERT INTO `t_blog` VALUES ('14', '呵呵呵呵呵', 0x313233, 'puload/pi5.jpg', 'puload/pi2.jpg', '2017-08-28 19:41:40', '11', '2');
INSERT INTO `t_blog` VALUES ('15', '哈哈哈哈哈哈哈啊哈哈哈', 0xE5BC80E5BF83, 'puload/pi.jpg', 'puload/pi.jpg', '2017-08-25 17:04:41', '10', '1');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `message` text COLLATE utf8_bin,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_blog_comment` (`blog_id`),
  CONSTRAINT `fk_blog_comment` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`blog_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES ('1', 'lisi', 0xE59388E59388E59388E59388E59388E59388E59388E5958AE59388E59388E59388, '148108@qq。com', '15642', '2017-08-26 16:22:57', '1');
INSERT INTO `t_comment` VALUES ('2', 'zhanga', 0xE99B86E695A3E59CB0E8BF94E59B9E, '1346', '878', '2017-08-26 16:23:21', '2');
INSERT INTO `t_comment` VALUES ('3', 'dije', 0xE4BDA0E79A84E59B9EE8AF9D, '5484', '2124', '2017-08-26 16:23:47', '3');
INSERT INTO `t_comment` VALUES ('4', 'dfi', 0xE89C80E983BDE8B58B, '545', '487', '2017-08-26 16:24:17', '4');
INSERT INTO `t_comment` VALUES ('5', 'jhhdued', 0xE4B9A6E8A784E5AE9AE79A84E5B9B4E7BAAA, '1563', '46873', '2017-08-26 16:24:46', '5');
INSERT INTO `t_comment` VALUES ('6', 'suhdi', 0xE983BDE6B2A1E4BDA0E79A84, '548', '44', '2017-08-26 16:25:04', '2');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of t_message
-- ----------------------------

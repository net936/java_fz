/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : java_fz

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 14/07/2024 21:30:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (11, '36d0a613-3c3a-4a6d-b20a-1ad69d9e187b.jpeg', 'http://www.baidu.com', '1716541055636');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '电信类', '1681347523973');
INSERT INTO `b_classification` VALUES (2, '网络类', '1681347533598');
INSERT INTO `b_classification` VALUES (3, '投资类', '1681347534635');
INSERT INTO `b_classification` VALUES (15, '购物类', '1720926726639');
INSERT INTO `b_classification` VALUES (16, '传销类', '1720926732119');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (19, 'aa', '1716604731109', 0, NULL, NULL);
INSERT INTO `b_comment` VALUES (20, 'ff', '1716604743726', 0, NULL, NULL);
INSERT INTO `b_comment` VALUES (25, '3333332222222', '1720927859175', 0, 11, 102);
INSERT INTO `b_comment` VALUES (26, 'kkkkkkkkkk', '1720928013756', 1, 11, 103);
INSERT INTO `b_comment` VALUES (27, 'hhhhhhhhhhhh', '1720928016692', 0, 11, 103);
INSERT INTO `b_comment` VALUES (28, 'pppppppppppp', '1720928019922', 1, 11, 103);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `log_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (4, '测试反馈221111', 'hhhhhhhhhhh', '武松', '112011@gmail.com', '11151534');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 14:18:07.160822');
INSERT INTO `b_login_log` VALUES (2, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 19:46:30.674702');
INSERT INTO `b_login_log` VALUES (3, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2023-03-11 19:47:08.152159');
INSERT INTO `b_login_log` VALUES (4, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:29:53.373699');
INSERT INTO `b_login_log` VALUES (5, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:30:05.505138');
INSERT INTO `b_login_log` VALUES (6, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-18 21:31:34.616610');
INSERT INTO `b_login_log` VALUES (7, 'test1', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 09:48:36.853269');
INSERT INTO `b_login_log` VALUES (8, 'bbb@qq.com', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:27:24.658195');
INSERT INTO `b_login_log` VALUES (9, 'bbb@qq.com', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:29:09.117872');
INSERT INTO `b_login_log` VALUES (10, 'admin111', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '2023-03-19 20:31:49.536392');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (2, '测试通知', 'ggggg', '1681465796380');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_ua` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21658 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (21600, '127.0.0.1', '2024-07-14 21:28:49.541', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/clearOpLog', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (21601, '127.0.0.1', '2024-07-14 21:28:50.435', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21602, '127.0.0.1', '2024-07-14 21:28:51.056', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21603, '127.0.0.1', '2024-07-14 21:28:52.560', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (21604, '127.0.0.1', '2024-07-14 21:28:53.018', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21605, '127.0.0.1', '2024-07-14 21:28:54.057', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21606, '127.0.0.1', '2024-07-14 21:28:54.453', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21607, '127.0.0.1', '2024-07-14 21:28:55.344', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21608, '127.0.0.1', '2024-07-14 21:28:57.824', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/login', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (21609, '127.0.0.1', '2024-07-14 21:28:58.028', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21610, '127.0.0.1', '2024-07-14 21:28:58.028', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21611, '127.0.0.1', '2024-07-14 21:29:00.200', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/ad/list', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21612, '127.0.0.1', '2024-07-14 21:29:00.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21613, '127.0.0.1', '2024-07-14 21:29:01.541', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21614, '127.0.0.1', '2024-07-14 21:29:02.787', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21615, '127.0.0.1', '2024-07-14 21:29:03.375', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21616, '127.0.0.1', '2024-07-14 21:29:09.450', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/userLogin', 'OPTIONS', NULL, '0');
INSERT INTO `b_op_log` VALUES (21617, '127.0.0.1', '2024-07-14 21:29:09.490', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/userLogin', 'POST', NULL, '7');
INSERT INTO `b_op_log` VALUES (21618, '127.0.0.1', '2024-07-14 21:29:14.401', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/userLogin', 'POST', NULL, '9');
INSERT INTO `b_op_log` VALUES (21619, '127.0.0.1', '2024-07-14 21:29:17.064', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (21620, '127.0.0.1', '2024-07-14 21:29:17.572', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21621, '127.0.0.1', '2024-07-14 21:29:26.636', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/userLogin', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (21622, '127.0.0.1', '2024-07-14 21:29:26.702', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21623, '127.0.0.1', '2024-07-14 21:29:26.704', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (21624, '127.0.0.1', '2024-07-14 21:29:26.708', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21625, '127.0.0.1', '2024-07-14 21:29:26.708', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (21626, '127.0.0.1', '2024-07-14 21:29:28.944', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21627, '127.0.0.1', '2024-07-14 21:29:29.525', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/opLog/loginLogList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21628, '127.0.0.1', '2024-07-14 21:29:30.810', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/errorLog/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21629, '127.0.0.1', '2024-07-14 21:29:32.853', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/ad/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21630, '127.0.0.1', '2024-07-14 21:29:35.721', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21631, '127.0.0.1', '2024-07-14 21:29:36.256', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21632, '127.0.0.1', '2024-07-14 21:29:36.486', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21633, '127.0.0.1', '2024-07-14 21:29:36.688', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21634, '127.0.0.1', '2024-07-14 21:29:36.888', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (21635, '127.0.0.1', '2024-07-14 21:29:37.085', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21636, '127.0.0.1', '2024-07-14 21:29:37.314', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21637, '127.0.0.1', '2024-07-14 21:29:37.505', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21638, '127.0.0.1', '2024-07-14 21:29:37.692', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (21639, '127.0.0.1', '2024-07-14 21:29:37.888', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21640, '127.0.0.1', '2024-07-14 21:29:39.572', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21641, '127.0.0.1', '2024-07-14 21:29:39.763', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21642, '127.0.0.1', '2024-07-14 21:29:39.961', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (21643, '127.0.0.1', '2024-07-14 21:29:40.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (21644, '127.0.0.1', '2024-07-14 21:29:40.367', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (21645, '127.0.0.1', '2024-07-14 21:29:40.556', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21646, '127.0.0.1', '2024-07-14 21:29:41.274', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (21647, '127.0.0.1', '2024-07-14 21:29:41.276', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (21648, '127.0.0.1', '2024-07-14 21:29:41.279', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thingCollect/getUserCollectList', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21649, '127.0.0.1', '2024-07-14 21:29:41.281', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thingWish/getUserWishList', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (21650, '127.0.0.1', '2024-07-14 21:29:41.289', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (21651, '127.0.0.1', '2024-07-14 21:29:41.293', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21652, '127.0.0.1', '2024-07-14 21:29:41.738', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/notice/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (21653, '127.0.0.1', '2024-07-14 21:29:41.741', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (21654, '127.0.0.1', '2024-07-14 21:29:41.745', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/user/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (21655, '127.0.0.1', '2024-07-14 21:29:41.745', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (21656, '127.0.0.1', '2024-07-14 21:29:46.020', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (21657, '127.0.0.1', '2024-07-14 21:29:46.021', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '/api/thing/list', 'GET', NULL, '9');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(10) NULL DEFAULT NULL COMMENT '物品id',
  `score` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打分',
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `thingId`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_ibfk_1` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 101, '4', '127.0.0.2');
INSERT INTO `b_record` VALUES (2, 102, '5', '127.0.0.2');
INSERT INTO `b_record` VALUES (3, 103, '3', '127.0.0.2');
INSERT INTO `b_record` VALUES (4, 100, '1', '127.0.0.2');
INSERT INTO `b_record` VALUES (5, 107, '1', '127.0.0.2');
INSERT INTO `b_record` VALUES (6, 106, '1', '127.0.0.2');
INSERT INTO `b_record` VALUES (7, 105, '6', '127.0.0.2');
INSERT INTO `b_record` VALUES (8, 104, '2', '127.0.0.1');
INSERT INTO `b_record` VALUES (9, 100, '1', '127.0.0.1');
INSERT INTO `b_record` VALUES (10, 106, '1', '127.0.0.1');
INSERT INTO `b_record` VALUES (11, 103, '1', '127.0.0.1');
INSERT INTO `b_record` VALUES (12, 102, '1', '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `raw` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `score` int(11) NULL DEFAULT 0,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` int(10) NULL DEFAULT 3,
  `pv` int(11) NULL DEFAULT 0,
  `recommend_count` int(11) NULL DEFAULT 0,
  `wish_count` int(11) NULL DEFAULT 0,
  `collect_count` int(11) NULL DEFAULT 0,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_ibfk_1` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (100, '临港区反诈骗宣传视频', '46148ce7-0c6f-4ceb-a8f1-0a0c6490757a.mp4', '8bf99c63-9efa-42c8-aaa2-f48643620549.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', 0, '1720927349170', 3, 2, 0, 0, 0, 1, NULL);
INSERT INTO `b_thing` VALUES (101, '市北区反诈骗宣传视频', '46148ce7-0c6f-4ceb-a8f1-0a0c6490757a.mp4', '08d81e1b-f1ea-4c5c-911c-bc252090abde.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', 0, '1720927349170', 3, 5, 0, 0, 0, 2, NULL);
INSERT INTO `b_thing` VALUES (102, '经济开发区反诈骗宣传视频', '46148ce7-0c6f-4ceb-a8f1-0a0c6490757a.mp4', 'ffbd0c7b-4239-499f-89c1-2e303c986067.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', 0, '1720927349170', 3, 6, 0, 1, 1, 3, NULL);
INSERT INTO `b_thing` VALUES (103, '常见反诈骗宣传视频', '46148ce7-0c6f-4ceb-a8f1-0a0c6490757a.mp4', 'c94a981e-f2e1-49d0-9c47-74acdbeb66cc.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', 0, '1720927349170', 3, 4, 0, 1, 1, 15, NULL);
INSERT INTO `b_thing` VALUES (104, '测试反诈骗宣传视频', '46148ce7-0c6f-4ceb-a8f1-0a0c6490757a.mp4', '55ee49e9-6c5b-4311-b218-f4d43617e7a9.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', 0, '1720927349170', 3, 2, 0, 0, 0, 16, NULL);
INSERT INTO `b_thing` VALUES (105, 'aaa反诈骗宣传视频', '46148ce7-0c6f-4ceb-a8f1-0a0c6490757a.mp4', 'f8c40aea-613c-4fba-8184-d7b27c1a9fb0.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', 0, '1720927349170', 4, 7, 0, 1, 1, 15, NULL);
INSERT INTO `b_thing` VALUES (106, 'bbb反诈骗宣传视频', '46148ce7-0c6f-4ceb-a8f1-0a0c6490757a.mp4', '87f7f834-fcda-404f-b70b-624cb57825cd.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', 0, '1720927349170', 3, 2, 0, 0, 0, 1, NULL);
INSERT INTO `b_thing` VALUES (107, '购物反诈骗宣传视频', '46148ce7-0c6f-4ceb-a8f1-0a0c6490757a.mp4', '6844f811-ec79-47d4-9814-8a966b814e44.jpeg', '诈骗是一种卑鄙，无耻的犯罪行为，给受害者带来经济损失、心理伤害甚至生活困扰。为了建设诚信社会，维护社会和谐，我们每个人都应当警惕诈骗，拒绝诱惑，远离欺骗。\r\n\r\n“见诈即拒，保护自己”的理念，提醒我们在日常生活中要保持警惕，不要轻信陌生人的电话、短信、微信等信息，不要随意泄露个人隐私信息。铭记“不轻信、不贪心、不冲动”的原则，遇到可疑情况要及时向警方或相关部门报警求助。\r\n\r\n“学会甄别、守住底线”的态度，让我们更加警觉地对待各种诈骗手段，不为虚假的承诺、高额回报所诱惑。保持理性思考，不要被诱骗者的花言巧语所蒙蔽，始终保持清醒头脑和冷静判断。\r\n\r\n“诚实守信、弘扬正气”的信念，我们应当坚守诚实守信的原则，远离欺诈行为，树立良好的品德，传递正能量。用自己的行动引领他人，共同构建一个廉洁正直的社会环境。\r\n\r\n拒绝诈骗，让我们从自身做起，守住底线，弘扬诚信，共同维护社会的安全和稳定。相信只要我们齐心协力，共同努力，扫清一切欺诈障碍，必能构筑一个诚实守信的和谐社会。让我们携手共建，共同呼吁：“拒绝诈骗，共建诚信社会！”', '0', 0, '1720927349170', 3, 1, 0, 0, 0, 15, NULL);

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (19, 102, 11);
INSERT INTO `b_thing_collect` VALUES (20, 103, 11);
INSERT INTO `b_thing_collect` VALUES (21, 105, 11);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (22, 102, 11);
INSERT INTO `b_thing_wish` VALUES (23, 103, 11);
INSERT INTO `b_thing_wish` VALUES (24, 105, 11);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT 0,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT 0,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (10, 'admin', '6d854ca8c1479c069dad7d5b7ccdfd28', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1686407694426', 0, NULL, 0, '9116392dc24b7b84483ba00b0d72b80c');
INSERT INTO `b_user` VALUES (11, 'ddd', 'a4c9855f2a97a78b604d0fb258880b21', '1', '0', 'dfa32', NULL, NULL, 'ad', NULL, 'd', '1686409115429', 0, '111@aa.com', 1, 'a4c9855f2a97a78b604d0fb258880b21');
INSERT INTO `b_user` VALUES (12, 'admin111', 'e92035e1e4e340de1eaa22b9e8bb586b', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1686448633036', 0, NULL, 0, 'e92035e1e4e340de1eaa22b9e8bb586b');
INSERT INTO `b_user` VALUES (13, 'aaa', 'e0ef3639469fcba73c6b5288cefbbede', '1', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1705999747721', 0, NULL, 0, 'e0ef3639469fcba73c6b5288cefbbede');
INSERT INTO `b_user` VALUES (15, 'aaf', '714a328c25aafbd7deb6fa9b187bbca5', '2', '0', 'fff', NULL, '09', NULL, NULL, NULL, '1716557740722', 0, NULL, 0, 'a514eafcf1dc602b69a842cd64e71083');
INSERT INTO `b_user` VALUES (16, 'admin123', 'f159053ec4a0e4a0e3c66cfd7c254853', '3', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1716559102822', 0, NULL, 0, 'f159053ec4a0e4a0e3c66cfd7c254853');

SET FOREIGN_KEY_CHECKS = 1;

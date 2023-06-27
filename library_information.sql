/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : library_information

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 30/03/2023 12:10:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
                         `bid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `bname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `bauthor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `bstatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `deleted` int(1) NOT NULL DEFAULT 0,
                         PRIMARY KEY (`bid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO book VALUES ('1', '西游记', '吴承恩', '未借出', 0);
INSERT INTO book VALUES ('2', '红楼梦', '曹雪芹', '已借出', 1);
INSERT INTO book VALUES ('3', '水浒传', '施耐庵', '已借出', 0);
INSERT INTO book VALUES ('4', '三国演义', '罗贯中', '未借出', 0);
INSERT INTO book VALUES ('5', '鬼吹灯', '天下霸唱', '未借出', 0);
INSERT INTO book VALUES ('6', '活着', '余华', '已借出', 1);
INSERT INTO book VALUES ('7', '围城', '钱钟书', '未借出', 0);
INSERT INTO book VALUES ('8', '百年孤独', '加西亚·马尔克斯', '已借出', 1);
INSERT INTO book VALUES ('9', '平凡的世界', '路遥', '未借出', 0);
INSERT INTO book VALUES ('10', '红高粱家族', '莫言', '已借出', 1);
INSERT INTO book VALUES ('11', '追风筝的人', '卡勒德·胡赛尼', '未借出', 0);
INSERT INTO book VALUES ('12', '解忧杂货店', '东野圭吾', '已借出', 0);
INSERT INTO book VALUES ('13', '白夜行', '东野圭吾', '未借出', 0);
INSERT INTO book VALUES ('14', '嫌疑人X的献身', '东野圭吾', '已借出', 1);
INSERT INTO book VALUES ('15', '小王子', '圣埃克苏佩里', '未借出', 0);
INSERT INTO book VALUES ('16', '悲惨世界', '雨果', '已借出', 0);
INSERT INTO book VALUES ('17', '罪与罚', '陀思妥耶夫斯基', '未借出', 0);
INSERT INTO book VALUES ('18', '麦田里的守望者', '塞林格', '已借出', 1);
INSERT INTO book VALUES ('19', '哈利·波特与魔法石', 'J.K.罗琳', '未借出', 0);

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow`  (
                           `id` bigint(30) NOT NULL AUTO_INCREMENT,
                           `uid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `bid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                           `bdate` datetime(0) NOT NULL,
                           `rdate` datetime(0) NULL DEFAULT NULL,
                           `deleted` int(1) NOT NULL DEFAULT 0,
                           PRIMARY KEY (`id`) USING BTREE,
                           INDEX `bid`(`bid`) USING BTREE,
                           INDEX `uid`(`uid`) USING BTREE,
                           CONSTRAINT `bid` FOREIGN KEY (`bid`) REFERENCES `book` (`bid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                           CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES (1, 'admin', '12', '2023-06-22 15:33:13', '2023-06-24 16:56:49', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
                         `uid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `uname` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `uphone` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `uidentity` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `deleted` int(1) NOT NULL DEFAULT 0,
                         PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 0);

SET FOREIGN_KEY_CHECKS = 1;


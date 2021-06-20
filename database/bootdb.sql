/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50525
 Source Host           : 127.0.0.1:3306
 Source Schema         : bootdb

 Target Server Type    : MySQL
 Target Server Version : 50525
 File Encoding         : 65001

 Date: 20/06/2021 17:21:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PK คีย์หลักประจำตาราง',
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อ',
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'นามสกุล',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อผู้ใช้งาน',
  `password` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'รหัสผ่าน',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'avatar.png' COMMENT 'รูปโปรไฟล์',
  `status` enum('superadmin','admin') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'สิทธิการเข้าใช้งาน',
  `created_at` datetime NOT NULL COMMENT 'สร้างข้อมูลวันที่',
  `update_at` datetime NOT NULL COMMENT 'แก้ไขข้อมูลวันที่',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

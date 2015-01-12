/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50613
 Source Host           : localhost
 Source Database       : toughradius

 Target Server Type    : MySQL
 Target Server Version : 50613
 File Encoding         : utf-8

 Date: 01/13/2015 00:46:49 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `slc_member`
-- ----------------------------
DROP TABLE IF EXISTS `slc_member`;
CREATE TABLE `slc_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `realname` varchar(64) NOT NULL,
  `idcard` varchar(32) DEFAULT NULL,
  `sex` smallint(6) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_time` varchar(19) NOT NULL,
  `update_time` varchar(19) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_member`
-- ----------------------------
BEGIN;
INSERT INTO `slc_member` VALUES ('1', '1', 'testuser1', '123456', '1', '0', '', '123456', 'address', '2015-01-13 00:15:20', '2015-01-13 00:15:20'), ('2', '1', 'testuser2', '123456', '1', '0', '', '123456', 'address', '2015-01-13 00:15:20', '2015-01-13 00:15:20');
COMMIT;

-- ----------------------------
--  Table structure for `slc_member_order`
-- ----------------------------
DROP TABLE IF EXISTS `slc_member_order`;
CREATE TABLE `slc_member_order` (
  `order_id` varchar(32) NOT NULL,
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_number` varchar(32) NOT NULL,
  `order_fee` int(11) NOT NULL,
  `actual_fee` int(11) NOT NULL,
  `pay_status` int(11) NOT NULL,
  `accept_id` int(11) NOT NULL,
  `order_source` varchar(64) NOT NULL,
  `create_time` varchar(19) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_member_order`
-- ----------------------------
BEGIN;
INSERT INTO `slc_member_order` VALUES ('201501130015200002', '1', '1', '1201021222', '0', '0', '1', '2', 'console', '2015-01-13 00:15:20'), ('201501130015200003', '2', '1', '120102e1222', '0', '0', '1', '3', 'console', '2015-01-13 00:15:20'), ('201501130015370004', '1', '1', '1201021222', '0', '3300', '1', '4', 'console', '2015-01-13 00:15:37'), ('201501130018510001', '1', '1', '1201021222', '0', '21100', '1', '5', 'console', '2015-01-13 00:18:51'), ('201501130019030002', '1', '1', '1201021222', '0', '22200', '1', '6', 'console', '2015-01-13 00:19:03'), ('201501130022530001', '2', '2', 'test008', '0', '22200', '1', '11', 'console', '2015-01-13 00:22:53'), ('201501130023530001', '2', '2', 'test008', '0', '33300', '1', '12', 'console', '2015-01-13 00:23:53'), ('201501130024150002', '2', '2', 'test008', '0', '22200', '1', '13', 'console', '2015-01-13 00:24:15'), ('201501130032520003', '1', '1', 'test0080', '0', '22200', '1', '14', 'console', '2015-01-13 00:32:52');
COMMIT;

-- ----------------------------
--  Table structure for `slc_member_refund`
-- ----------------------------
DROP TABLE IF EXISTS `slc_member_refund`;
CREATE TABLE `slc_member_refund` (
  `refund_id` varchar(32) NOT NULL,
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `account_number` varchar(32) NOT NULL,
  `refund_fee` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `accept_id` int(11) NOT NULL,
  `refund_desc` varchar(1024) DEFAULT NULL,
  `create_time` varchar(19) NOT NULL,
  PRIMARY KEY (`refund_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_member_refund`
-- ----------------------------
BEGIN;
INSERT INTO `slc_member_refund` VALUES ('201501130019140003', '1', '1', '1201021222', '34500', '1', '7', null, '2015-01-13 00:19:14');
COMMIT;

-- ----------------------------
--  Table structure for `slc_node`
-- ----------------------------
DROP TABLE IF EXISTS `slc_node`;
CREATE TABLE `slc_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_name` varchar(32) NOT NULL,
  `node_desc` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_node`
-- ----------------------------
BEGIN;
INSERT INTO `slc_node` VALUES ('1', 'default', 'default');
COMMIT;

-- ----------------------------
--  Table structure for `slc_param`
-- ----------------------------
DROP TABLE IF EXISTS `slc_param`;
CREATE TABLE `slc_param` (
  `param_name` varchar(64) NOT NULL,
  `param_value` varchar(255) NOT NULL,
  `param_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`param_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_param`
-- ----------------------------
BEGIN;
INSERT INTO `slc_param` VALUES ('max_session_timeout', '86400', '最大会话时长(秒)'), ('reject_delay', '7', '拒绝延迟时间(秒),0-9');
COMMIT;

-- ----------------------------
--  Table structure for `slc_rad_accept_log`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_accept_log`;
CREATE TABLE `slc_rad_accept_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accept_type` varchar(16) NOT NULL,
  `accept_desc` varchar(512) DEFAULT NULL,
  `account_number` varchar(32) NOT NULL,
  `operator_name` varchar(32) DEFAULT NULL,
  `accept_source` varchar(128) DEFAULT NULL,
  `accept_time` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_rad_accept_log`
-- ----------------------------
BEGIN;
INSERT INTO `slc_rad_accept_log` VALUES ('2', 'open', 'import user', '1201021222', 'admin', 'console', '2015-01-13 00:15:20'), ('3', 'open', 'import user', '120102e1222', 'admin', 'console', '2015-01-13 00:15:20'), ('4', 'next', null, '1201021222', 'admin', 'console', '2015-01-13 00:15:37'), ('5', 'next', null, '1201021222', 'admin', 'console', '2015-01-13 00:18:51'), ('6', 'next', null, '1201021222', 'admin', 'console', '2015-01-13 00:19:03'), ('7', 'cancel', null, '1201021222', 'admin', 'console', '2015-01-13 00:19:14'), ('8', 'pause', 'pause user', '120102e1222', 'admin', 'console', '2015-01-13 00:19:50'), ('9', 'resume', 'resume user', '120102e1222', 'admin', 'console', '2015-01-13 00:19:54'), ('11', 'open', null, 'test008', 'admin', 'console', '2015-01-13 00:22:53'), ('12', 'charge', null, 'test008', 'admin', 'console', '2015-01-13 00:23:53'), ('13', 'charge', null, 'test008', 'admin', 'console', '2015-01-13 00:24:15'), ('14', 'open', null, 'test0080', 'admin', 'console', '2015-01-13 00:32:52');
COMMIT;

-- ----------------------------
--  Table structure for `slc_rad_account`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_account`;
CREATE TABLE `slc_rad_account` (
  `account_number` varchar(32) NOT NULL,
  `member_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `group_id` varchar(32) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `status` int(11) NOT NULL,
  `install_address` varchar(128) NOT NULL,
  `balance` int(11) NOT NULL,
  `time_length` int(11) NOT NULL,
  `expire_date` varchar(10) NOT NULL,
  `user_concur_number` int(11) NOT NULL,
  `user_mac` smallint(6) NOT NULL,
  `user_vlan` smallint(6) NOT NULL,
  `mac_addr` varchar(17) DEFAULT NULL,
  `vlan_id` int(11) DEFAULT NULL,
  `vlan_id2` int(11) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `last_pause` varchar(19) DEFAULT NULL,
  `create_time` varchar(19) NOT NULL,
  `update_time` varchar(19) NOT NULL,
  PRIMARY KEY (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_rad_account`
-- ----------------------------
BEGIN;
INSERT INTO `slc_rad_account` VALUES ('1201021222', '1', '1', null, 'TJ8EFaSsL8CN3FXLVRUGDH1FEJK42kY7ivBjg0L0/r8SWmJ1iKLfO2tuOeUToq/j', '3', 'address', '0', '0', '2015-03-07', '0', '0', '0', '', '0', '0', '', null, '2015-01-13 00:15:20', '2015-01-13 00:15:20'), ('120102e1222', '2', '1', null, 'WeDmko22VKdf3pX1oTMf1Z9jFxHy0CgGl09Ph2mdtucjvHDnSflMiqn58Gdi7nMU', '1', 'address', '0', '0', '2015-12-30', '0', '0', '0', '', '0', '0', '', '2015-01-13 00:19:50', '2015-01-13 00:15:20', '2015-01-13 00:15:20'), ('test008', '2', '2', null, '+3NilQwCqXK8DmD4RkRZQYkXT046lPoAV0/9joBihM8kE2EqIWTGR7s6e7jfdHJc', '1', '23424234', '77700', '0', '3000-11-11', '0', '0', '0', '', '0', '0', '', null, '2015-01-13 00:22:53', '2015-01-13 00:22:53'), ('test0080', '1', '1', null, 'HAqmMo1vPeu0SvChtogGybLx0/ma+hbd5lfor9MF8bUaHcuiUSbpjeqIGyg0G1ME', '1', '23424234', '0', '0', '2015-01-29', '0', '0', '0', '', '0', '0', '', null, '2015-01-13 00:32:52', '2015-01-13 00:32:52');
COMMIT;

-- ----------------------------
--  Table structure for `slc_rad_account_attr`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_account_attr`;
CREATE TABLE `slc_rad_account_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_number` varchar(32) NOT NULL,
  `attr_name` varchar(255) NOT NULL,
  `attr_value` varchar(255) NOT NULL,
  `attr_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `slc_rad_bas`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_bas`;
CREATE TABLE `slc_rad_bas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_id` varchar(32) NOT NULL,
  `ip_addr` varchar(15) NOT NULL,
  `bas_name` varchar(64) NOT NULL,
  `bas_secret` varchar(64) NOT NULL,
  `time_type` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_rad_bas`
-- ----------------------------
BEGIN;
INSERT INTO `slc_rad_bas` VALUES ('1', '0', '192.168.1.102', 'test_bas', '123456', '0');
COMMIT;

-- ----------------------------
--  Table structure for `slc_rad_group`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_group`;
CREATE TABLE `slc_rad_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) NOT NULL,
  `group_desc` varchar(255) DEFAULT NULL,
  `bind_mac` smallint(6) NOT NULL,
  `bind_vlan` smallint(6) NOT NULL,
  `concur_number` int(11) NOT NULL,
  `update_time` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `slc_rad_online`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_online`;
CREATE TABLE `slc_rad_online` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_number` varchar(32) NOT NULL,
  `nas_addr` varchar(32) NOT NULL,
  `acct_session_id` varchar(64) NOT NULL,
  `acct_start_time` varchar(19) NOT NULL,
  `framed_ipaddr` varchar(32) NOT NULL,
  `mac_addr` varchar(32) NOT NULL,
  `nas_port_id` varchar(64) NOT NULL,
  `start_source` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `slc_rad_operator`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_operator`;
CREATE TABLE `slc_rad_operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` int(11) NOT NULL,
  `operator_type` int(11) NOT NULL,
  `operator_name` varchar(32) NOT NULL,
  `operator_pass` varchar(128) NOT NULL,
  `operator_status` int(11) NOT NULL,
  `operator_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_rad_operator`
-- ----------------------------
BEGIN;
INSERT INTO `slc_rad_operator` VALUES ('1', '1', '1', 'admin', '63a9f0ea7bb98050796b649e85481845', '1', 'admin');
COMMIT;

-- ----------------------------
--  Table structure for `slc_rad_product`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_product`;
CREATE TABLE `slc_rad_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(64) NOT NULL,
  `product_policy` int(11) NOT NULL,
  `product_status` smallint(6) NOT NULL,
  `bind_mac` smallint(6) NOT NULL,
  `bind_vlan` smallint(6) NOT NULL,
  `concur_number` int(11) NOT NULL,
  `fee_period` varchar(11) DEFAULT NULL,
  `fee_price` int(11) NOT NULL,
  `input_max_limit` int(11) NOT NULL,
  `output_max_limit` int(11) NOT NULL,
  `create_time` varchar(19) NOT NULL,
  `update_time` varchar(19) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `slc_rad_product`
-- ----------------------------
BEGIN;
INSERT INTO `slc_rad_product` VALUES ('1', '10元包月套餐', '0', '1', '0', '0', '0', '0', '0', '102400', '102400', '2014-12-10 23:23:21', '2014-12-10 23:23:21'), ('2', '每小时10元', '1', '0', '0', '0', '0', '', '1000', '102400', '102400', '2015-01-13 00:20:28', '2015-01-13 00:26:09');
COMMIT;

-- ----------------------------
--  Table structure for `slc_rad_product_attr`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_product_attr`;
CREATE TABLE `slc_rad_product_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_name` varchar(255) NOT NULL,
  `attr_value` varchar(255) NOT NULL,
  `attr_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `slc_rad_roster`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_roster`;
CREATE TABLE `slc_rad_roster` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac_addr` varchar(17) NOT NULL,
  `account_number` varchar(32) DEFAULT NULL,
  `begin_time` varchar(19) NOT NULL,
  `end_time` varchar(19) NOT NULL,
  `roster_type` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `slc_rad_ticket`
-- ----------------------------
DROP TABLE IF EXISTS `slc_rad_ticket`;
CREATE TABLE `slc_rad_ticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_number` varchar(253) NOT NULL,
  `acct_input_gigawords` int(11) DEFAULT NULL,
  `acct_input_octets` int(11) DEFAULT NULL,
  `acct_input_packets` int(11) DEFAULT NULL,
  `acct_output_gigawords` int(11) DEFAULT NULL,
  `acct_output_octets` int(11) DEFAULT NULL,
  `acct_output_packets` int(11) DEFAULT NULL,
  `acct_session_id` varchar(253) NOT NULL,
  `acct_session_time` int(11) NOT NULL,
  `acct_start_time` varchar(19) NOT NULL,
  `acct_stop_time` varchar(19) NOT NULL,
  `acct_terminate_cause` int(11) DEFAULT NULL,
  `mac_addr` varchar(128) DEFAULT NULL,
  `calling_station_id` varchar(128) DEFAULT NULL,
  `frame_id_netmask` varchar(15) DEFAULT NULL,
  `framed_ipaddr` varchar(15) DEFAULT NULL,
  `nas_class` varchar(253) DEFAULT NULL,
  `nas_addr` varchar(15) NOT NULL,
  `nas_port` int(11) DEFAULT NULL,
  `nas_port_id` varchar(253) DEFAULT NULL,
  `nas_port_type` int(11) DEFAULT NULL,
  `service_type` int(11) DEFAULT NULL,
  `session_timeout` int(11) DEFAULT NULL,
  `start_source` int(11) NOT NULL,
  `stop_source` int(11) NOT NULL,
  `acct_fee` int(11) NOT NULL,
  `fee_receivables` int(11) NOT NULL,
  `is_deduct` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

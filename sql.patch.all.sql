INSERT INTO `um_role_permission` (`role_id`, `permission_id`, `create_time`) VALUES (20, 2202, '2020-03-05 07:08:09');
UPDATE `om_adnetwork` SET `ios_adtype` = '15' WHERE `id` = '9';
UPDATE `om_adnetwork` SET `status` = '1', `android_adtype` = '0', `publisher_visible` = '1' WHERE `id` = '6';
INSERT INTO `om_adnetwork` VALUES (15, 'ironSource', 'IronSource', 0, 13, 0, NULL, 'IronSource', 1, 1, '2020-03-17 14:32:19', '2020-03-17 14:32:19');
INSERT INTO `om_support_device` (`brand`, `device`, `model`) VALUES ('Apple', 'iPhone', 'iPhone1,1'),('Apple', 'iPhone', 'iPhone1,2'),('Apple', 'iPhone', 'iPhone2,1'),('Apple', 'iPhone', 'iPhone3,1'),('Apple', 'iPhone', 'iPhone3,2'),('Apple', 'iPhone', 'iPhone3,3'),('Apple', 'iPhone', 'iPhone4,1'),('Apple', 'iPhone', 'iPhone5,1'),('Apple', 'iPhone', 'iPhone5,2'),('Apple', 'iPhone', 'iPhone5,3'),('Apple', 'iPhone', 'iPhone5,4'),('Apple', 'iPhone', 'iPhone6,1'),('Apple', 'iPhone', 'iPhone6,2'),('Apple', 'iPhone', 'iPhone7,2'),('Apple', 'iPhone', 'iPhone7,1'),('Apple', 'iPhone', 'iPhone8,1'),('Apple', 'iPhone', 'iPhone8,2'),('Apple', 'iPhone', 'iPhone8,4'),('Apple', 'iPhone', 'iPhone9,1'),('Apple', 'iPhone', 'iPhone9,3'),('Apple', 'iPhone', 'iPhone9,2'),('Apple', 'iPhone', 'iPhone9,4'),('Apple', 'iPhone', 'iPhone10,1'),('Apple', 'iPhone', 'iPhone10,4'),('Apple', 'iPhone', 'iPhone10,2'),('Apple', 'iPhone', 'iPhone10,5'),('Apple', 'iPhone', 'iPhone10,3'),('Apple', 'iPhone', 'iPhone10,6'),('Apple', 'iPhone', 'iPhone11,8'),('Apple', 'iPhone', 'iPhone11,2'),('Apple', 'iPhone', 'iPhone11,6'),('Apple', 'iPhone', 'iPhone11,4'),('Apple', 'iPhone', 'iPhone12,1'),('Apple', 'iPhone', 'iPhone12,3'),('Apple', 'iPhone', 'iPhone12,5'),('Apple', 'iPhone', 'iPhone12,8'),('Apple', 'iPad', 'iPad1,1'),('Apple', 'iPad', 'iPad2,1'),('Apple', 'iPad', 'iPad2,2'),('Apple', 'iPad', 'iPad2,3'),('Apple', 'iPad', 'iPad2,4'),('Apple', 'iPad', 'iPad3,1'),('Apple', 'iPad', 'iPad3,2'),('Apple', 'iPad', 'iPad3,3'),('Apple', 'iPad', 'iPad3,4'),('Apple', 'iPad', 'iPad3,5'),('Apple', 'iPad', 'iPad3,6'),('Apple', 'iPad', 'iPad6,11'),('Apple', 'iPad', 'iPad6,12'),('Apple', 'iPad', 'iPad7,5'),('Apple', 'iPad', 'iPad7,6'),('Apple', 'iPad', 'iPad7,11'),('Apple', 'iPad', 'iPad7,12'),('Apple', 'iPad', 'iPad4,1'),('Apple', 'iPad', 'iPad4,2'),('Apple', 'iPad', 'iPad4,3'),('Apple', 'iPad', 'iPad5,3'),('Apple', 'iPad', 'iPad5,4'),('Apple', 'iPad', 'iPad11,3'),('Apple', 'iPad', 'iPad11,4'),('Apple', 'iPad', 'iPad6,7'),('Apple', 'iPad', 'iPad6,8'),('Apple', 'iPad', 'iPad6,3'),('Apple', 'iPad', 'iPad6,4'),('Apple', 'iPad', 'iPad7,1'),('Apple', 'iPad', 'iPad7,2'),('Apple', 'iPad', 'iPad7,3'),('Apple', 'iPad', 'iPad7,4'),('Apple', 'iPad', 'iPad8,1'),('Apple', 'iPad', 'iPad8,2'),('Apple', 'iPad', 'iPad8,3'),('Apple', 'iPad', 'iPad8,4'),('Apple', 'iPad', 'iPad8,5'),('Apple', 'iPad', 'iPad8,6'),('Apple', 'iPad', 'iPad8,7'),('Apple', 'iPad', 'iPad8,8'),('Apple', 'iPad', 'iPad8,9'),('Apple', 'iPad', 'iPad8,10'),('Apple', 'iPad', 'iPad8,11'),('Apple', 'iPad', 'iPad8,12'),('Apple', 'iPad', 'iPad2,5'),('Apple', 'iPad', 'iPad2,6'),('Apple', 'iPad', 'iPad2,7'),('Apple', 'iPad', 'iPad4,4'),('Apple', 'iPad', 'iPad4,5'),('Apple', 'iPad', 'iPad4,6'),('Apple', 'iPad', 'iPad4,7'),('Apple', 'iPad', 'iPad4,8'),('Apple', 'iPad', 'iPad4,9'),('Apple', 'iPad', 'iPad5,1'),('Apple', 'iPad', 'iPad5,2'),('Apple', 'iPad', 'iPad11,1'),('Apple', 'iPad', 'iPad11,2');

CREATE TABLE `report_ironsource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `country_code` varchar(30) DEFAULT NULL COMMENT '国家',
  `app_key` varchar(100) DEFAULT NULL COMMENT 'App Key',
  `platform` varchar(10) DEFAULT NULL COMMENT 'iOS,Android',
  `ad_units` varchar(50) DEFAULT NULL COMMENT 'Interstitial,Rewarded Video,Banner',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `instance_name` varchar(50) DEFAULT NULL,
  `bundle_id` varchar(200) DEFAULT NULL,
  `app_name` varchar(200) DEFAULT NULL,
  `revenue` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT '预计收入',
  `ecpm` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT '预计千次展示费用',
  `impressions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '展示次数',
  `active_users` int(10) unsigned NOT NULL DEFAULT '0',
  `engaged_users` int(10) unsigned NOT NULL DEFAULT '0',
  `engagement_rate` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `impressions_per_engaged_user` decimal(16,4) unsigned NOT NULL DEFAULT '0.0000',
  `revenue_per_active_user` decimal(16,4) unsigned NOT NULL DEFAULT '0.0000',
  `revenue_per_engaged_user` decimal(16,4) unsigned NOT NULL DEFAULT '0.0000',
  `engaged_sessions` int(10) unsigned NOT NULL DEFAULT '0',
  `impression_per_engaged_sessions` decimal(16,4) unsigned NOT NULL DEFAULT '0.0000',
  `impressions_per_session` decimal(16,4) unsigned NOT NULL DEFAULT '0.0000',
  `sessions_per_active_user` decimal(16,4) unsigned NOT NULL DEFAULT '0.0000',
  `ad_source_checks` int(10) unsigned NOT NULL DEFAULT '0',
  `ad_source_responses` int(10) unsigned NOT NULL DEFAULT '0',
  `ad_source_availability_rate` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `click_through_rate` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `username` varchar(100) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`date`),
  KEY `country_code` (`country_code`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (to_days(`date`))
(PARTITION p202003 VALUES LESS THAN (737881) ENGINE = InnoDB,
 PARTITION p202004 VALUES LESS THAN (737911) ENGINE = InnoDB,
 PARTITION p202005 VALUES LESS THAN (737942) ENGINE = InnoDB,
 PARTITION p202006 VALUES LESS THAN (737972) ENGINE = InnoDB,
 PARTITION p202007 VALUES LESS THAN (738003) ENGINE = InnoDB,
 PARTITION p202008 VALUES LESS THAN (738034) ENGINE = InnoDB,
 PARTITION p202009 VALUES LESS THAN (738064) ENGINE = InnoDB,
 PARTITION p202010 VALUES LESS THAN (738095) ENGINE = InnoDB,
 PARTITION p202011 VALUES LESS THAN (738125) ENGINE = InnoDB,
 PARTITION p202012 VALUES LESS THAN (738156) ENGINE = InnoDB) */;

DELETE FROM `om_adnetwork` WHERE id<16;
INSERT INTO `om_adnetwork` (`id`, `name`, `class_name`, `type`, `ios_adtype`, `android_adtype`, `sdk_version`, `descn`, `status`, `publisher_visible`, `create_time`, `lastmodify`)
VALUES
	(1, X'616474', X'416454696D696E67', 15, 15, 15, X'342E32362E30', X'416454696D696E67', 1, 1, '2020-01-15 11:31:18', '2020-01-15 11:31:18'),
	(2, X'61646D6F62', X'41644D6F62', 15, 15, 15, X'31312E382E30', X'41644D6F62', 1, 1, '2020-01-15 11:31:18', '2020-01-15 11:31:18'),
	(3, X'66616365626F6F6B', X'46616365626F6F6B', 15, 15, 15, X'342E32362E30', X'46616365626F6F6B2041756469656E6365204E6574776F726B', 1, 1, '2020-01-15 11:31:18', '2020-01-15 11:31:18'),
	(4, X'756E697479616473', X'556E697479', 12, 13, 13, X'322E312E31', X'556E697479416473', 1, 1, '2020-01-15 11:31:18', '2020-04-24 14:52:07'),
	(5, X'76756E676C65', X'56756E676C65', 12, 13, 13, X'352E312E30', X'56756E676C65', 1, 1, '2020-01-15 11:31:18', '2020-04-24 14:52:11'),
	(6, X'74656E63656E746164', X'54656E63656E744164', 3, 15, 15, X'342E362E31', X'54656E63656E744164', 1, 1, '2020-01-15 11:31:18', '2020-04-24 14:46:34'),
	(7, X'6164636F6C6F6E79', X'4164436F6C6F6E79', 12, 12, 12, X'332E332E33', X'4164436F6C6F6E79', 1, 1, '2020-01-15 11:31:18', '2020-04-24 14:48:57'),
	(8, X'6170706C6F76696E', X'4170704C6F76696E', 12, 13, 13, X'382E302E30', X'4170704C6F76696E', 1, 1, '2020-01-15 11:31:18', '2020-04-24 14:52:12'),
	(9, X'6D6F707562', X'4D6F707562', 3, 15, 15, X'342E32302E30', X'4D6F507562', 1, 1, '2020-01-15 11:31:18', '2020-04-24 14:48:54'),
	(10, X'676F6F676C656164', X'476F6F676C654164', 2, 2, 2, NULL, X'476F6F676C65204164204D616E61676572', 0, 0, '2020-01-15 11:31:18', '2020-01-15 11:31:18'),
	(11, X'7461706A6F79', X'5461706A6F79', 12, 12, 12, X'31312E37', X'5461706A6F79', 1, 1, '2020-01-15 11:31:18', '2020-01-15 11:31:18'),
	(12, X'6368617274626F6F7374', X'4368617274626F6F7374', 12, 12, 12, X'372E332E31', X'4368617274626F6F7374', 1, 1, '2020-01-15 11:31:18', '2020-01-15 11:31:18'),
	(13, X'74696B746F6B', X'54696B546F6B', 12, 15, 15, X'', X'54696B746F6B', 1, 1, '2020-01-15 11:31:18', '2020-04-24 14:54:06'),
	(14, X'6D696E74656772616C', X'4D696E74656772616C', 14, 13, 12, X'', X'4D696E74656772616C', 1, 1, '2020-01-15 11:31:18', '2020-01-15 11:31:18'),
	(15, X'69726F6E536F75726365', X'49726F6E536F75726365', 0, 13, 13, NULL, X'49726F6E536F75726365', 1, 1, '2020-03-17 14:32:19', '2020-04-24 14:46:11');

ALTER TABLE `om_adnetwork` ADD `bid_endpoint` VARCHAR(200)  NULL  DEFAULT NULL  AFTER `publisher_visible`;
UPDATE `om_adnetwork` SET bid_endpoint='https://sdk.adtiming.com/a/bid/v1' where id=1;
UPDATE `om_adnetwork` SET bid_endpoint='https://an.facebook.com/${PLATFORM_ID}/placementbid.ortb' where id=3;

CREATE TABLE `om_server_node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `nodeid` varchar(50) NOT NULL COMMENT 'nodeid uuid',
  `dcenter` tinyint(3) unsigned NOT NULL COMMENT 'om_server_dcenter.id',
  `ip` varchar(50) NOT NULL COMMENT 'First Init IP',
  `descn` varchar(200) DEFAULT NULL COMMENT 'Description',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nodeid` (`nodeid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='om-server node';

-- 20200525
INSERT INTO `um_permission` (`id`, `pid`, `type`, `title`, `name`, `api_path`, `sort_index`, `sort_index_ext`, `descn`, `status`, `create_time`, `lastmodify`) VALUES (31, 11, 'perm', 'Company Settings', 'company', '/publisher/get\n/publisher/update\n/publisher/create', 0, 0, NULL, 1, '2020-04-21 17:47:18', '2020-04-22 11:36:17'),(32, 11, 'perm', 'App Settings', 'app_settings', '/publisher/get\n/publisher/update\n/publisher/create', 0, 0, NULL, 1, '2020-04-21 17:47:18', '2020-04-22 11:36:17'),(3100, 31, 'action', 'Query', 'query', '/publisher/payment_info/get\n/publisher/get\n/publisher/account/list\n/publisher/payment_info/list\n/publisher/account/select/list', 0, 0, NULL, 1, '2020-04-21 17:48:35', '2020-05-11 19:22:41'),(3101, 31, 'action', 'Add', 'add', '/publisher/create\n/publisher/account/create\n/publisher/payment_info/create\n/publisher/promote/create', 0, 0, NULL, 1, '2020-04-21 17:48:35', '2020-05-12 14:12:34'),(3102, 31, 'action', 'Edit', 'edit', '/publisher/update\n/publisher/account/update\n/publisher/account/delete\n/publisher/payment_info/update\n/report/google/refreshToken/save\n/report/callback/oauth2authorize\n/register/publisher/complete\n/publisher/verify/ads\n/publisher/promote/update\n/publisher/promote/get', 0, 0, NULL, 1, '2020-04-23 16:00:12', '2020-05-12 14:14:49'),(3200, 32, 'action', 'Query', 'query', '/publisher/list\n/publisher/select/list', 0, 0, NULL, 1, '2020-04-21 17:48:35', '2020-04-23 16:03:16'),(3201, 32, 'action', 'Add', 'add', '/publisher/create', 0, 0, NULL, 1, '2020-04-21 17:48:35', '2020-04-23 15:55:39'),(3202, 32, 'action', 'Edit', 'edit', '/publisher/get\n/publisher/update\n/adnetwork/app/status/update', 0, 0, NULL, 1, '2020-04-23 15:56:54', '2020-04-26 13:09:23');
INSERT INTO `um_role_permission` (`role_id`, `permission_id`, `create_time`) VALUES (1, 31, '2020-04-21 17:49:34'),(1, 32, '2020-04-21 17:49:34'),(1, 3100, '2020-04-21 17:49:34'),(1, 3101, '2020-04-21 17:49:34'),(1, 3102, '2020-04-21 17:49:34'),(1, 3200, '2020-04-21 17:49:34'),(20, 31, '2020-04-14 16:12:21'),(20, 32, '2020-04-21 17:49:34'),(20, 3100, '2020-04-21 04:51:29'),(20, 3101, '2020-04-21 04:51:29'),(20, 3102, '2020-04-23 03:39:37'),(20, 3200, '2020-04-21 17:49:34'),(20, 3201, '2020-05-12 16:43:22'),(20, 3202, '2020-05-12 16:43:22'),(30, 31, '2020-02-20 03:26:11'),(30, 32, '2020-04-21 17:49:34'),(30, 3100, '2020-04-21 04:51:34'),(30, 3101, '2020-04-27 01:45:27'),(30, 3102, '2020-04-27 01:45:27'),(30, 3200, '2020-04-21 17:49:34'),(30, 3201, '2020-04-23 03:38:47'),(30, 3202, '2020-04-23 03:38:47'),(40, 31, '2020-02-20 03:26:11'),(40, 32, '2020-02-20 03:26:11'),(40, 3100, '2020-04-26 04:59:47'),(40, 3101, '2020-04-26 04:59:47'),(40, 3102, '2020-04-26 04:59:47'),(40, 3200, '2020-04-26 04:59:48'),(40, 3201, '2020-04-27 01:58:24'),(40, 3202, '2020-04-27 01:58:25'),(50, 31, '2020-02-20 03:26:11'),(50, 32, '2020-02-20 03:26:11'),(50, 3100, '2020-04-26 04:59:55'),(50, 3200, '2020-04-26 04:59:55');
ALTER TABLE report_adnetwork_account ADD COLUMN `publisher_id` INT(11) NOT NULL AFTER `adn_id`;
ALTER TABLE report_adnetwork_account ADD COLUMN `adn_account_name` VARCHAR(200) NULL AFTER `adn_account_id`,CHANGE COLUMN `adn_account_id` `adn_account_id` INT(11) NULL DEFAULT '0' COMMENT 'AdNetworkId账号ID' ,CHANGE COLUMN `adn_account_owner` `adn_account_owner` TINYINT(3) NULL DEFAULT '0' COMMENT 'Account Owner: 0,Publisher;1,AdTiming;2,No Setting' ;
ALTER TABLE report_adnetwork_account ADD COLUMN `auth_type` TINYINT(3) NOT NULL DEFAULT 0 AFTER `auth_key`;
ALTER TABLE report_adnetwork_account ADD COLUMN `currency` VARCHAR(3) NOT NULL DEFAULT 'USD' AFTER `auth_type`;
ALTER TABLE report_adnetwork_account ADD COLUMN `reason` VARCHAR(2000) NULL DEFAULT NULL AFTER `status`;
UPDATE om_placement_rule_segment SET gender=0;
ALTER TABLE om_placement_rule_segment add `channel` varchar(100) DEFAULT NULL COMMENT '国内Android channel 定向, 换行分隔' after iap_max,add `channel_bow` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'channel 定向方式, 0:黑名单,1:白名单' after channel,add `model_type` int(10) unsigned DEFAULT '0' COMMENT '设备类型定向,二进制,位置:{0:Phone,1:Pad,2:TV}' after channel_bow,modify `gender` tinyint(3) NOT NULL DEFAULT '0' COMMENT '性别定向二进制, 位置{0:男,1:女}';
ALTER TABLE om_placement add `inventory_interval_step` varchar(100) DEFAULT NULL COMMENT '自动补库存阈值间隔, 多行分隔, 单行格式: "{连续失败次数}:{间隔}"' after `inventory_interval`;
-- 20200526
UPDATE um_permission SET `api_path` = '/sdk/dev_app/get\n/sdk/adnetworks\n/sdk/adnetwork/placements\n/sdk/devices\n/sdk/dev_app/dev_result/update\n/sdk/device/create\n/sdk/dev_app/create\n/sdk/dev_app/operation\n/sdk/device/delete' WHERE (`id` = '2600');
ALTER TABLE om_adnetwork_app_change ADD COLUMN `new_report_account_id` INT(11) NOT NULL DEFAULT 0 AFTER `report_account_id`;

-- 20200529
INSERT INTO um_role_permission (`role_id`, `permission_id`) VALUES ('20', '1501');
INSERT INTO um_role_permission (`role_id`, `permission_id`) VALUES ('20', '1502');

-- 20200605
ALTER TABLE stat_lr ADD COLUMN scene_id INT(11) NOT NULL DEFAULT 0 AFTER `instance_id`;

-- 20200610
ALTER TABLE `report_adnetwork_linked`
ADD COLUMN `currency` VARCHAR(3) CHARACTER SET utf8mb4 BINARY NOT NULL DEFAULT 'USD' AFTER `abt`,
ADD COLUMN `exchange_rate` decimal(16,6) NOT NULL DEFAULT '0.000000' AFTER `currency`,
ADD COLUMN `cost_ori` decimal(16,4) NOT NULL DEFAULT '0.0000' AFTER `cost`,
ADD COLUMN `revenue_ori` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT 'Revenue' AFTER `revenue`;
ALTER TABLE `stat_adnetwork`
ADD COLUMN `currency` VARCHAR(3) CHARACTER SET utf8mb4 BINARY NOT NULL DEFAULT 'USD' AFTER `abt`,
ADD COLUMN `exchange_rate` decimal(16,6) NOT NULL DEFAULT '0.000000' AFTER `currency`,
ADD COLUMN `cost_ori` decimal(16,4) NOT NULL DEFAULT '0.0000' AFTER `cost`,
ADD COLUMN `revenue_ori` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT 'Revenue' AFTER `revenue`;
ALTER TABLE `report_adnetwork_task`
ADD COLUMN `auth_type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0:开发者账号授权拉取,1:adt账号联合登录授权方式,2:无需授权，开发者自有账号拉取' AFTER `credential_path`,
ADD COLUMN  `currency` varchar(3) NOT NULL DEFAULT 'USD' AFTER `auth_type`,
ADD COLUMN `time_dimension` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'Time Dimensions，0:Hour，1:Day' AFTER `run_count`;

-- 20200611
UPDATE om_adnetwork SET bid_endpoint='http://hb.rayjump.com/bid' WHERE id=14;

-- 20200702
UPDATE um_permission SET title='Ad Network Accounts', name='accounts' WHERE id=31
ALTER TABLE om_adnetwork_app_change DROP  PRIMARY  KEY;

-- 20200707
alter table om_placement_rule_segment
    add `age_min` int(11) NOT NULL DEFAULT '0' after `gender`,
    add `age_max` int(11) NOT NULL DEFAULT '0' after `age_min`;

ALTER TABLE `om_currency_exchange` CHANGE `id` `id` INT(11)  UNSIGNED  NOT NULL  AUTO_INCREMENT;
ALTER TABLE `om_currency_exchange_day` CHANGE `id` `id` INT(11)  UNSIGNED  NOT NULL  AUTO_INCREMENT;

alter table stat_lr
    add `bid_req` int(10) NOT NULL DEFAULT '0' COMMENT 'BidRequestCount',
    add `bid_resp` int(10) NOT NULL DEFAULT '0' COMMENT 'BidResponseCount',
    add `bid_resp_price` decimal(16,6) NOT NULL DEFAULT '0' COMMENT 'sum(BidResponsePrice)',
    add `bid_win` int(10) NOT NULL DEFAULT '0' COMMENT 'Bid Win Count',
    add `bid_win_price` decimal(16,6) NOT NULL DEFAULT '0' COMMENT 'sum(BidWinPrice)';

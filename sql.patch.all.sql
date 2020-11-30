INSERT INTO `um_role_permission` (`role_id`, `permission_id`, `create_time`) VALUES (20, 2202, '2020-03-05 07:08:09');
INSERT INTO `om_support_device` (`brand`, `device`, `model`) VALUES ('Apple', 'iPhone', 'iPhone1,1'),('Apple', 'iPhone', 'iPhone1,2'),('Apple', 'iPhone', 'iPhone2,1'),('Apple', 'iPhone', 'iPhone3,1'),('Apple', 'iPhone', 'iPhone3,2'),('Apple', 'iPhone', 'iPhone3,3'),('Apple', 'iPhone', 'iPhone4,1'),('Apple', 'iPhone', 'iPhone5,1'),('Apple', 'iPhone', 'iPhone5,2'),('Apple', 'iPhone', 'iPhone5,3'),('Apple', 'iPhone', 'iPhone5,4'),('Apple', 'iPhone', 'iPhone6,1'),('Apple', 'iPhone', 'iPhone6,2'),('Apple', 'iPhone', 'iPhone7,2'),('Apple', 'iPhone', 'iPhone7,1'),('Apple', 'iPhone', 'iPhone8,1'),('Apple', 'iPhone', 'iPhone8,2'),('Apple', 'iPhone', 'iPhone8,4'),('Apple', 'iPhone', 'iPhone9,1'),('Apple', 'iPhone', 'iPhone9,3'),('Apple', 'iPhone', 'iPhone9,2'),('Apple', 'iPhone', 'iPhone9,4'),('Apple', 'iPhone', 'iPhone10,1'),('Apple', 'iPhone', 'iPhone10,4'),('Apple', 'iPhone', 'iPhone10,2'),('Apple', 'iPhone', 'iPhone10,5'),('Apple', 'iPhone', 'iPhone10,3'),('Apple', 'iPhone', 'iPhone10,6'),('Apple', 'iPhone', 'iPhone11,8'),('Apple', 'iPhone', 'iPhone11,2'),('Apple', 'iPhone', 'iPhone11,6'),('Apple', 'iPhone', 'iPhone11,4'),('Apple', 'iPhone', 'iPhone12,1'),('Apple', 'iPhone', 'iPhone12,3'),('Apple', 'iPhone', 'iPhone12,5'),('Apple', 'iPhone', 'iPhone12,8'),('Apple', 'iPad', 'iPad1,1'),('Apple', 'iPad', 'iPad2,1'),('Apple', 'iPad', 'iPad2,2'),('Apple', 'iPad', 'iPad2,3'),('Apple', 'iPad', 'iPad2,4'),('Apple', 'iPad', 'iPad3,1'),('Apple', 'iPad', 'iPad3,2'),('Apple', 'iPad', 'iPad3,3'),('Apple', 'iPad', 'iPad3,4'),('Apple', 'iPad', 'iPad3,5'),('Apple', 'iPad', 'iPad3,6'),('Apple', 'iPad', 'iPad6,11'),('Apple', 'iPad', 'iPad6,12'),('Apple', 'iPad', 'iPad7,5'),('Apple', 'iPad', 'iPad7,6'),('Apple', 'iPad', 'iPad7,11'),('Apple', 'iPad', 'iPad7,12'),('Apple', 'iPad', 'iPad4,1'),('Apple', 'iPad', 'iPad4,2'),('Apple', 'iPad', 'iPad4,3'),('Apple', 'iPad', 'iPad5,3'),('Apple', 'iPad', 'iPad5,4'),('Apple', 'iPad', 'iPad11,3'),('Apple', 'iPad', 'iPad11,4'),('Apple', 'iPad', 'iPad6,7'),('Apple', 'iPad', 'iPad6,8'),('Apple', 'iPad', 'iPad6,3'),('Apple', 'iPad', 'iPad6,4'),('Apple', 'iPad', 'iPad7,1'),('Apple', 'iPad', 'iPad7,2'),('Apple', 'iPad', 'iPad7,3'),('Apple', 'iPad', 'iPad7,4'),('Apple', 'iPad', 'iPad8,1'),('Apple', 'iPad', 'iPad8,2'),('Apple', 'iPad', 'iPad8,3'),('Apple', 'iPad', 'iPad8,4'),('Apple', 'iPad', 'iPad8,5'),('Apple', 'iPad', 'iPad8,6'),('Apple', 'iPad', 'iPad8,7'),('Apple', 'iPad', 'iPad8,8'),('Apple', 'iPad', 'iPad8,9'),('Apple', 'iPad', 'iPad8,10'),('Apple', 'iPad', 'iPad8,11'),('Apple', 'iPad', 'iPad8,12'),('Apple', 'iPad', 'iPad2,5'),('Apple', 'iPad', 'iPad2,6'),('Apple', 'iPad', 'iPad2,7'),('Apple', 'iPad', 'iPad4,4'),('Apple', 'iPad', 'iPad4,5'),('Apple', 'iPad', 'iPad4,6'),('Apple', 'iPad', 'iPad4,7'),('Apple', 'iPad', 'iPad4,8'),('Apple', 'iPad', 'iPad4,9'),('Apple', 'iPad', 'iPad5,1'),('Apple', 'iPad', 'iPad5,2'),('Apple', 'iPad', 'iPad11,1'),('Apple', 'iPad', 'iPad11,2');

CREATE TABLE IF NOT EXISTS `report_ironsource` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
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

CREATE TABLE IF NOT EXISTS `om_server_node` (
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
UPDATE um_permission SET title='Ad Network Accounts', name='accounts' WHERE id=31;
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

-- 20200713
INSERT INTO `om_currency_exchange` (`id`, `cur_from`, `cur_to`, `exchange_rate`, `create_time`, `lastmodify`) VALUES (92, X'555344', X'555344', 1.000000, '2020-07-07 14:39:17', '2020-07-07 14:39:17');

-- 20200720
alter table stat_lr
    add `bid` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'isBidReleated, {0:NO,1:YES}';
    
-- 20200812 
UPDATE um_permission SET `api_path` = '/placement/get\n/placement/update\n/placement/scene/update\n/placement/create_update' WHERE (`id` = '1302');
UPDATE um_permission SET `api_path` = '/mediation/segment/save\n/mediation/segment/rule/delete\n/mediation/segment/resort/priority\n/mediation/rule/resort/priority\n/mediation/segment/update\n/mediation/segment/rule/update\n/mediation/segment/rule/instance/update\n/mediation/segment/rule/instance/create\n/mediation/segment/rule/instance/delete\n/mediation/segment/get\n/mediation/segment/rule/instance/delete\n/mediation/rule/resort/priority\n/mediation/segment/rule/delete\n/placement/get' WHERE (`id` = '1600');

CREATE TABLE `om_message_dict` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(50) DEFAULT NULL,
  `msg_key` varchar(50) DEFAULT NULL,
  `value` text,
  `name` varchar(30) NOT NULL DEFAULT '',
  `status` tinyint(3) DEFAULT '1',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_key` (`page`,`msg_key`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4;

INSERT INTO `om_message_dict` VALUES (1,'pubapp','id_empty','Please enter App Store or Google Play URL.','',1,'2020-06-04 06:18:02','2020-06-19 03:48:14'),(2,'pubapp','id_pattern','The App ID is incorrect, please check again.','',1,'2020-06-04 06:18:02','2020-06-19 03:49:14'),(3,'pubapp','name_empty','Please enter app name.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(4,'pubapp','app_not_found','The app is not found in the store, please check the URL again.','',1,'2020-06-04 06:18:02','2020-06-19 03:50:17'),(5,'pubapp','coppa_not_allowed','It must be checked.','',1,'2020-06-04 06:18:02','2020-06-19 03:52:14'),(6,'pubapp','app_key_copied','Copied App Key value to the clipboard','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(7,'pubapp','ads_code_copied','Copied Code Snippet to the clipboard','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(8,'pubapp','status_update','Succeed','',1,'2020-06-04 06:18:02','2020-06-19 04:06:08'),(9,'pubapp','verify_success','Verified successfully.','',1,'2020-06-04 06:18:02','2020-06-19 03:52:48'),(10,'pubapp','alert_title','Congrats! Your App is created successfully.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(11,'pubapp','alert_content','Next steps: Create a placement to display ads in your app.','',1,'2020-06-04 06:18:02','2020-06-18 08:57:12'),(12,'pubapp','alert_button','Create','',1,'2020-06-04 06:18:02','2020-06-18 08:56:11'),(13,'placement','update_success','Update successfully.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(14,'placement','create_success','A NEW Placement has been created successfully.','',1,'2020-06-04 06:18:02','2020-06-19 04:01:16'),(15,'placement','scene_status','All changes have been saved.','',1,'2020-06-04 06:18:02','2020-06-19 03:55:23'),(16,'placement','name_empty','Please enter placement name.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(17,'placement','alert_adn_title','Your Placement has been created successfully.','',1,'2020-06-04 06:18:02','2020-06-19 03:56:07'),(18,'placement','alert_adn_content','Next steps: Setup ad network settings for monetize','',1,'2020-06-04 06:18:02','2020-06-18 10:15:23'),(19,'placement','alert_adn_button','Setup','',1,'2020-06-04 06:18:02','2020-06-19 03:56:34'),(20,'placement','alert_instance_new_title','Your Ad Network is Ready.','',1,'2020-06-04 06:18:02','2020-06-18 10:57:52'),(21,'placement','alert_instance_new_content','Next steps：Setup an Instance to Monitize','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(22,'placement','alert_instance_new_button','Setup Instance','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(23,'placement','alert_waterfall_title','Everything is ready.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(24,'placement','alert_waterfall_content','Next steps：Setup a Mediation Rule to Monitize','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(25,'placement','alert_waterfall_button','Setup Mediation Rule','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(26,'instance','update_success','All changes have been saved.','',1,'2020-06-04 06:18:02','2020-06-19 04:04:18'),(27,'instance','create_success','A NEW Instance has been created successfully.','',1,'2020-06-04 06:18:02','2020-06-19 04:01:05'),(28,'instance','adn_empty','Please select an Ad Network.','',1,'2020-06-04 06:18:02','2020-06-19 04:06:52'),(29,'instance','name_empty','Please enter the Instance name.','',1,'2020-06-04 06:18:02','2020-06-19 04:06:43'),(30,'instance','unit_id_empty','Please enter the Unit ID.','',1,'2020-06-04 06:18:02','2020-06-19 04:06:36'),(31,'instance','placement_key_exits','This Unit ID has already existed.','',1,'2020-06-04 06:18:02','2020-06-19 04:07:50'),(32,'scenes','name_empty','Please enter the Scene name.','',1,'2020-06-04 06:18:02','2020-06-19 04:08:00'),(33,'scenes','update_success','All changes have been saved.','',1,'2020-06-04 06:18:02','2020-06-19 04:04:28'),(34,'scenes','create_success','A NEW Scene has been created successfully.','',1,'2020-06-04 06:18:02','2020-06-19 04:00:56'),(35,'mediation','name_empty','Please enter the Mediation Rule Name.','',1,'2020-06-04 06:18:02','2020-06-19 04:08:08'),(36,'mediation','regions_empty','Regions can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(37,'mediation','optimized_type_empty','Please select the Optimized Type.','',1,'2020-06-04 06:18:02','2020-06-19 04:08:33'),(38,'mediation','channel_too_long','Data too long for Channel, Please control at 1000 characters','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(39,'mediation','update_success','All changes have been saved.','',1,'2020-06-04 06:18:02','2020-06-19 04:04:36'),(40,'mediation','create_success','A NEW Mediation Rule has been created successfully.','',1,'2020-06-04 06:18:02','2020-06-19 04:01:34'),(41,'mediation','remove_confirm','Are you sure?','',1,'2020-06-04 06:18:02','2020-06-19 04:09:28'),(42,'mediation','rule_instance_update','All changes have been saved.','',1,'2020-06-04 06:18:02','2020-06-19 04:09:44'),(43,'sdk','set_all','Please set all results','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(44,'sdk','select_one','Please select one Ad NetWork','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(45,'sdk','device_name_empty','Please enter the device name.','',1,'2020-06-04 06:18:02','2020-06-19 06:21:30'),(46,'sdk','id_empty','Please enter IDFA/GAID.','',1,'2020-06-04 06:18:02','2020-06-19 06:21:21'),(47,'abt','name_empty','Please enter the name.','',1,'2020-06-04 06:18:02','2020-06-19 06:21:16'),(48,'abt','name_pattern','The Name should less than 40 letters.','',1,'2020-06-04 06:18:02','2020-06-19 06:21:10'),(49,'abt','placement_empty','Please select the Placement.','',1,'2020-06-04 06:18:02','2020-06-19 06:21:06'),(50,'abt','setup_all_segments','Please set up the mediation rules for group B ','',1,'2020-06-04 06:18:02','2020-06-19 06:54:10'),(51,'abt','setup_app_unitid','Please fill all Unit IDs.','',1,'2020-06-04 06:18:02','2020-06-19 06:56:23'),(52,'abt','rule_empty','The mediation rule of group A can not be empty.','',1,'2020-06-04 06:18:02','2020-06-19 06:57:03'),(53,'appsettings','update_success','All changes have been saved.','',1,'2020-06-04 06:18:02','2020-06-19 04:05:02'),(54,'appsettings','create_success','Create successfully','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(55,'appsettings','copied_success','Copied to the clipboard','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(56,'appsettings','app_key','App Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(57,'appsettings','api_token','API Token can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(58,'appsettings','app_id','App ID can not be empty','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(59,'appsettings','system_user_access_token','System User Access Token can not be empty','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(60,'appsettings','game_id','Game ID can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(61,'appsettings','sdk_key','SDK Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(62,'appsettings','app_signature','App Signature can not be empty','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(63,'appsettings','adn_account','Please select an Ad Network Account.','',1,'2020-06-04 06:18:02','2020-06-19 06:58:13'),(64,'appsettings','plat_check','Platform mismatch.','',1,'2020-06-04 06:18:02','2020-06-19 06:58:31'),(65,'account','update_success','All changes have been saved.','',1,'2020-06-04 06:18:02','2020-06-19 04:05:10'),(66,'account','create_success','A NEW API Key has been created successfully.','',1,'2020-06-04 06:18:02','2020-06-19 04:02:02'),(67,'account','remove_success','The API Key has been removed.','',1,'2020-06-04 06:18:02','2020-06-19 06:58:55'),(68,'account','account_name','Account Name can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(69,'account','currency','Please select Currency. It should be as same as the setting in the Ad Network','',1,'2020-06-04 06:18:02','2020-06-19 07:00:05'),(70,'account','adn_empty','Ad Network can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(71,'account','app_key','App Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(72,'account','api_token','API Token can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(73,'account','client_id','Client ID can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(74,'account','client_secrect','Client Secrect can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(75,'account','refresh_token','Refresh Token can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(76,'account','reporting_api_key','Reporting API Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(77,'account','read_only_api_key','Read-Only API Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(78,'account','report_key','Report Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(79,'account','api_key','API Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(80,'account','inventory_report_id','Inventory Report ID can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(81,'account','publisher_reporting_api_key','Publisher Reporting API Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(82,'account','ad_reporting_api_key','Ad Reporting API Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(83,'account','user_id','User ID can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(84,'account','user_signature','User Signature can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(85,'account','report_api_skey','Report API SKey can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(86,'account','report_api_secret','Report API Secret can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(87,'account','user_name','User Name can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(88,'account','secret_key','Secret Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(89,'account','publisher_id','Publisher ID can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(90,'account','consumer_key','Consumer Key can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(91,'account','consumer_secret','Consumer Secret can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(92,'company','company_empty','Please enter Company Name.','',1,'2020-06-04 06:18:02','2020-06-04 08:03:51'),(93,'company','update_success_namechange','Updated! It will synchronize to Wire Transfer settings','',1,'2020-06-04 06:18:02','2020-06-19 07:01:33'),(94,'company','update_success','All changes have been saved.','',1,'2020-06-04 06:18:02','2020-06-19 04:05:24'),(95,'company','first_login','Please complete the company information first.','',1,'2020-06-04 06:18:02','2020-06-19 07:01:46'),(96,'company','company_name_change','It will synchronize to Wire Transfer settings','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(97,'company','country_empty','Base Country can not be empty.','',1,'2020-06-04 06:18:02','2020-06-19 07:02:14'),(98,'company','email_empty','Email can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(99,'company','email_pattern','Incorrect email address.','',1,'2020-06-04 06:18:02','2020-06-19 07:02:37'),(100,'company','address_empty','Address can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(101,'company','website_empty','Website can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(102,'company','website_pattern','Please input the full developer website URL in this field.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(103,'company','phone_empty','Phone can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(104,'promote','company_empty','Company Name can not be empty','',1,'2020-06-04 06:18:02','2020-06-19 07:03:07'),(105,'promote','regions_empty','Country can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(106,'promote','email_empty','Email can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(107,'promote','email_pattern','Incorrect mailbox format.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(108,'promote','save_success','All changes have been saved successfully.','',1,'2020-06-04 06:18:02','2020-06-19 07:03:59'),(109,'finance','update_success','Updated!','',1,'2020-06-04 06:18:02','2020-06-19 07:04:14'),(110,'finance','paypal_empty','Please fill in your Paypal account.','',1,'2020-06-04 06:18:02','2020-06-19 07:03:27'),(111,'finance','paypal_pattern','Incorrect email address.','',1,'2020-06-04 06:18:02','2020-06-19 07:04:59'),(112,'finance','store_url','Store Address can not be empty.','',1,'2020-06-04 06:18:02','2020-06-19 07:05:35'),(113,'finance','beneficiary_name','Beneficiary Name can not be empty.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(114,'finance','bank_name','Bank Name can not be empty','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(115,'finance','account_no','Account No. can not be empty','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(116,'finance','bank_address','Bank Address can not be empty','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(117,'finance','swift_code','Bank Identifier Code, please consult with the beneficiary bank.','',1,'2020-06-04 06:18:02','2020-06-19 07:06:11'),(118,'finance','not_agree','Must Agree to the aboce contract terms.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(119,'finance','country_empty','Country can not be empty','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(120,'finance','network_error','Something wrong with your connection, please try again later.','',1,'2020-06-04 06:18:02','2020-06-19 07:07:04'),(121,'promote','first_login','Please complete promote information first.','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(123,'appsettings','facebook_app_id_tip','You can find your App ID on your apps <a target=\"_blank\"; href=\"https://developers.facebook.com/apps\">settings page.</a>','',1,'2020-06-16 10:29:11','2020-06-16 10:39:40'),(124,'appsettings','facebook_system_user_access_token_tip','Please contact your Facebook account manager to receive your long term System User Access Token or refer to Facebook <a target=\"_blank\" href=\"https://developers.facebook.com/docs/audience-network/guides/reporting/system-user/\">documentation </a>.','',1,'2020-06-16 10:42:06','2020-06-16 10:42:06'),(125,'appsettings','unity_game_id_tip','From the <a target=\"_blank\" href=\"https://dashboard.unityads.unity3d.com/\">UnityAds dashboard</a>, choose your game. Your Game ID will be listed next to the platform.','',1,'2020-06-16 10:47:04','2020-06-16 10:47:04'),(126,'appsettings','vungle_app_id_tip','From the <a target=\"_blank\" href=\"https://dashboard.vungle.com/dashboard/accounts/details\">Vungle Details Dashboard</a>, select your application. On the next page, find the Vungle App ID in the Application Details column.','',1,'2020-06-16 10:48:27','2020-06-16 10:48:27'),(127,'appsettings','gdt_app_id_tip','From this <a target=\"_blank\" href=\"http://adnet.qq.com/medium/list\">Medium</a> page to get your App ID','',1,'2020-06-16 10:49:10','2020-06-16 10:49:10'),(128,'appsettings','admob_app_id_tip','From <a target=\"_blank\" href=\"https://apps.admob.com/?pli=1#account/settings:view\">the AdMob Monetize page</a>, select \"All Apps\" in the left sidebar, then choose your app. Click \"View setup instructions\" and copy the App ID displayed in the instructions. Make sure you use the same account as you do for the \"Grant Access\" button above otherwise the access will not be granted.','',1,'2020-06-16 10:56:31','2020-06-16 10:56:31'),(129,'appsettings','adcolony_app_id_tip','APP ID will be AdColony app UUID which is under \"Basic App Information\".','',1,'2020-06-16 10:59:08','2020-06-30 08:57:53'),(130,'appsettings','applovin_sdk_key_tip','From your <a target=\"_blank\" href=\"https://applovin.com/users/edit\">Account page</a>, choose \"Keys\" in the left sidebar, then select the SDK Key.','',1,'2020-06-16 10:59:47','2020-06-16 10:59:47'),(131,'appsettings','tapjoy_sdk_key_tip','This is available on the App Info tab under Settings -> App Settings on the Tapjoy Monetization Dashboard.','',1,'2020-06-16 11:00:53','2020-06-16 11:00:53'),(132,'appsettings','chartboost_app_id_tip','You can find your games App ID on its App Settings page on the <a target=\"_blank\" href=\"https://dashboard.chartboost.com/\">Chartboost dashboard</a>. See <a target=\"_blank\" href=\"https://answers.chartboost.com/hc/en-us/articles/201465075\">this Chartboost documentation for a screenshot.</a>','',1,'2020-06-16 11:01:30','2020-06-16 11:01:30'),(133,'appsettings','chartboost_app_signature_tip','You can find your games App ID on its App Settings page on the <a target=\"_blank\" href=\"https://dashboard.chartboost.com/\">Chartboost dashboard</a>. See <a target=\"_blank\" href=\"https://answers.chartboost.com/hc/en-us/articles/201465075\">this Chartboost documentation for a screenshot.</a>','',1,'2020-06-16 11:01:55','2020-06-16 11:01:55'),(134,'appsettings','ironsource_app_key_tip','From this <a target=\"_blank\" href=\"https://platform.ironsrc.com/partners/applications\">App Management</a> page to get your App Key','',1,'2020-06-16 11:02:49','2020-06-16 11:02:49'),(135,'account','admob_api_key_tip','To retrieve your API KEY, you must first create a designated project for your app on the <a target=\"_blank\" href=\"https://console.cloud.google.com/home\">Google Cloud Console</a>. For more steps, please visit <a target=\"_blank\" href=\"https://support.adtiming.com/hc/en-us/articles/360045557313-AdMob#adtiming-platform-configuration-0-4\">AdTiming Help Center</a>','',1,'2020-06-16 12:11:47','2020-08-13 10:07:27'),(136,'account','admob_client_id_tip','To retrieve your Client ID & Client Secret, go to <a target=\"_blank\" href=\"https://console.cloud.google.com/apis\"> Google’s API Manager </a>.','',1,'2020-06-16 12:15:11','2020-07-14 10:29:27'),(137,'account','admob_client_secrect_tip','To retrieve your Client ID & Client Secret, go to <a target=\"_blank\" href=\"https://console.cloud.google.com/apis\"> Google’s API Manager </a>.','',1,'2020-06-16 12:15:39','2020-07-14 10:29:36'),(138,'account','admob_refresh_token_tip','To retrieve your Refresh Token, go to the <a target=\"_blank\" href=\"https://developers.google.com/oauthplayground/#step1&scopes=https%3A//www.googleapis.com/auth/adwords&url=https%3A//&content_type=application/json&http_method=GET&useDefaultOauthCred=checked&oauthEndpointSelect=Google&oauthAuthEndpointValue=https%3A//accounts.google.com/o/oauth2/auth&oauthTokenEndpointValue=https%3A//www.googleapis.com/oauth2/v3/token&includeCredentials=unchecked&accessTokenType=bearer&autoRefreshToken=unchecked&accessType=offline&forceAprovalPrompt=checked&response_type=code\">OAuth 2.0 Playground</a>.','',1,'2020-06-16 12:16:05','2020-07-14 10:23:30'),(139,'account','admob_user_id_tip','From <a target=\"_blank\" href=\"https://apps.admob.com/?pli=1#account/settings:view\">the AdMob Monetize page</a>,Click the user avatar to get publisher id,Publisher ID like pub-xxxxxxxxxx','',1,'2020-06-16 12:16:43','2020-06-16 12:16:43'),(142,'account','admob_client_json_tip','From <a target=\"_blank\" href=\"https://console.developers.google.com/\">the Google Api Credentials page</a>,Download OAuth 2.0 Client json file and copy this file content to here','',1,'2020-06-16 12:20:06','2020-06-16 12:20:06'),(143,'account','admob_auth_url_tip','From <a target=\"_blank\" href=\"https://apps.admob.com/?pli=1#account/settings:view\">the Client ID for Web application page</a>, Copy this url to Authorized redirect URIs Users will be redirected to this path after they have authenticated with Google.','',1,'2020-06-16 12:20:34','2020-06-16 12:20:34'),(144,'account','unity_api_key_tip','You can retrieve the Monetization Stats API key from Unity Ads <a target=\"_blank\" href=\"https://dashboard.unityads.unity3d.com/\">Operate Dashboard</a>.','',1,'2020-06-16 12:21:39','2020-06-20 00:57:27'),(145,'account','vungle_reporting_api_key_tip','Go to the <a target=\"_blank\" href=\"https://publisher.vungle.com/account\">My Account</a> on the upper-right corner of the screen you will then see the Reporting API Key.','',1,'2020-06-16 12:22:25','2020-07-21 03:54:15'),(146,'account','adcolony_read_only_api_key_tip','Your key will be labeled as \"Read-Only API Key\" on <a target=\"_blank\" href=\"https://clients.adcolony.com/users/edit\">this page</a>','',1,'2020-06-16 12:23:06','2020-06-30 08:51:25'),(147,'account','applovin_report_key_tip','From your <a target=\"_blank\" href=\"https://applovin.com/users/edit\">Account page</a>, choose \"Keys\" in the left sidebar, then select the Report Key. If you do not see the Report Key field, email support@applovin.com and request your reporting key.','',1,'2020-06-16 12:23:42','2020-06-16 12:23:42'),(148,'account','mopub_api_key_tip','From the <a target=\"_blank\" href=\"https://app.mopub.com/reports/custom/\">Reports page</a>, check \"Enable data access through API\". Then click the \"View API Access Details\" link to reveal your API Key.','',1,'2020-06-16 12:24:16','2020-06-16 12:24:16'),(149,'account','mopub_inventory_report_id_tip','From the <a target=\"_blank\" href=\"https://app.mopub.com/reports/custom/\">Reports page</a>, click the \"View API Access Details\" link to reveal your Inventory Report ID.','',1,'2020-06-16 12:24:47','2020-06-16 12:25:35'),(150,'account','tapjoy_publisher_reporting_api_key_tip','This is available on the App Info tab under Settings -> App Settings on the Tapjoy Monetization Dashboard.','',1,'2020-06-16 12:25:57','2020-06-16 12:25:57'),(151,'account','tapjoy_ad_reporting_api_key_tip','This is available on the App Info tab under Settings -> App Settings on the Tapjoy Monetization Dashboard.','',1,'2020-06-16 12:26:52','2020-06-16 12:26:52'),(152,'account','chartboost_user_id_tip','From the <a target=\"_blank\" href=\"https://dashboard.chartboost.com/tools/api\">API Explorer Page</a>, select the User ID','',1,'2020-06-16 12:27:25','2020-06-16 12:27:25'),(153,'account','chartboost_user_signature_tip','From the <a target=\"_blank\" href=\"https://dashboard.chartboost.com/tools/api\">API Explorer Page</a>, select the User Signature.','',1,'2020-06-16 12:27:51','2020-06-16 12:27:51'),(154,'account','ironsource_user_name_tip','From <a target=\"_blank\" href=\"https://platform.ironsrc.com/partners/account/generalInfo\">ironSource My Account</a> page,selected User Info Tab to get your User Name','',1,'2020-06-16 12:28:40','2020-06-16 12:28:40'),(155,'account','ironsource_secret_key_tip','From <a target=\"_blank\" href=\"https://platform.ironsrc.com/partners/account/apiDetails\">ironSource My Account</a> page,selected API Tab to get your Secret Key','',1,'2020-06-16 12:29:03','2020-06-16 12:29:03'),(156,'mediation','already_existed_hb','Every ad network has ONE bidding id only.','',1,'2020-06-18 06:20:04','2020-06-18 06:20:04'),(157,'pubapp','app_id_tip','','App ID商店查询表单提示，为空不显示',1,'2020-06-18 09:43:09','2020-06-18 09:44:18'),(158,'pubapp','app_name_tip','','',1,'2020-06-18 10:06:34','2020-06-18 10:06:34'),(159,'pubapp','platform_tip','','',1,'2020-06-18 10:06:53','2020-06-18 10:06:53'),(160,'placement','name_tip','','',1,'2020-06-18 10:18:35','2020-06-18 10:18:35'),(161,'placement','callback_url_tip','The HTTP GET method called to your server in order to inform you to credit a user.','',1,'2020-06-19 03:06:37','2020-07-29 07:34:14'),(162,'placement','frequency_tip','Input the time interval you want to limit between ads for the placement.','',1,'2020-06-19 03:07:09','2020-07-29 07:37:50'),(163,'placement','pacing_tip','Input the number of ads you want to limit for the placement.','',1,'2020-06-19 03:07:35','2020-07-29 07:37:22'),(164,'account','admob_publisher_id','<b>AdMob Publisher ID</b>\r\n<br>It will be filled automatically after you finish the settings.','',1,'2020-06-04 06:18:02','2020-07-29 07:28:05'),(165,'account','unity_org_id_tip','Organization core ID can be retrieved from the Settings tab of the Unity Ads Operate Dashboard.','',1,'2020-06-04 06:18:02','2020-07-31 02:02:18'),(170,'account','pangle_user_id_tip','','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(171,'account','pangle_secret_key_tip','','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(172,'appsettings','pangle_app_id_tip','','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(173,'appsettings','mintegral_app_id_tip','','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(174,'appsettings','mintegral_app_key_tip','','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(175,'account','mintegral_report_api_skey_tip','','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(176,'account','mintegral_report_api_secret_tip','','',1,'2020-06-04 06:18:02','2020-06-04 06:18:02'),(177,'appsettings','dev_key_tip','','',1,'2020-06-04 06:18:02','2020-06-19 04:05:02'),(178,'mediation','rule_name_tip','','',1,'2020-07-14 08:45:24','2020-07-29 07:00:34'),(179,'mediation','optimized_type_tip','Select the optimized type of this mediation rule.</br>\r\n<br><b>Auto</b>\r\n<br>The instances are prioritized using AdTiming’s dynamic meditation algorithm, which adjusts the waterfall per session and gives each instance a chance to deliver in different positions to improve the eCPM.</br>\r\n<br><b>Manual</b>\r\n<br>The instances will deliver according to the order you place them.</br>','',1,'2020-07-14 08:56:53','2020-07-29 14:10:30'),(180,'mediation','regions_tip','Select the regions you want to include when targeting this mediation rule.','',1,'2020-07-14 08:59:24','2020-07-29 07:15:30'),(181,'mediation','frequency_tip','Input the number of times the ads were shown when targeting this mediation rule.','',1,'2020-07-14 09:05:34','2020-07-29 07:17:57'),(182,'mediation','gender_tip','Select the gender you want to include when targeting this mediation rule\r\n<br>Left it empty means for all genders.','',1,'2020-07-14 09:08:12','2020-07-29 07:19:54'),(183,'mediation','iap_tip','Input the range of users IAP you want to include when targeting this mediation rule.','',1,'2020-07-14 09:15:16','2020-07-29 07:21:56'),(184,'mediation','age_tip','Input the range of users age you want to include when targeting this mediation rule.','',1,'2020-07-14 09:27:05','2020-07-29 07:21:26'),(185,'mediation','contype_tip','Select the connection type you want to include when targeting this mediation rule.','',1,'2020-07-14 09:30:23','2020-07-29 07:22:30'),(186,'mediation','model_type_tip','Select the device type you want to include when targeting this mediation rule.','',1,'2020-07-14 09:30:38','2020-07-29 07:22:56'),(187,'mediation','brand_tip','Select the device brand you want to include or exclude when targeting this mediation rule.','',1,'2020-07-14 09:31:00','2020-07-29 07:23:10'),(188,'mediation','model_tip','Select the device model you want to include or exclude when targeting this mediation rule.','',1,'2020-07-14 09:31:45','2020-07-29 07:23:19'),(189,'abtest','name_tip','','',1,'2020-07-14 09:49:06','2020-07-29 07:26:16'),(190,'abtest','placement_tip','Select the placement you want to start this new a/b test on.','',1,'2020-07-14 09:50:24','2020-07-29 07:24:23'),(191,'abtest','traffic_tip','','',1,'2020-07-14 10:13:55','2020-07-29 07:26:09'),(192,'report','p_day','View performance by Date','',1,'2020-07-30 09:27:21','2020-07-30 09:27:21'),(193,'report','p_hour','View performance by Hour','',1,'2020-07-30 09:28:08','2020-07-30 09:28:08'),(194,'report','p_adtype','View performance by ad type (e.g., Banner, Interstitial).','',1,'2020-07-30 09:28:54','2020-07-30 09:28:54'),(195,'report','p_country','View performance broken down by the region of visitors that have viewed ads on your app.','',1,'2020-07-30 09:29:31','2020-07-30 09:29:31'),(196,'report','p_placement','View performance for individual ad placements.','',1,'2020-07-30 09:30:07','2020-07-30 09:30:07'),(197,'report','p_adn','View performance by ad network','',1,'2020-07-30 09:30:35','2020-07-30 09:30:35'),(198,'report','p_app','View performance by app.','',1,'2020-07-30 09:30:56','2020-07-30 09:30:56'),(199,'report','p_request','Breakdown by Instance or Ad Network: The number of requests your app has made to each ad network recorded by AdTiming SDK \r\nBreakdown by Placement or above: The number of times your app has requested an ad through AdTIming Mediation recorded by AdTiming SDK. Each mediation request counted here may represent multiple requests sent to different ad networks.','',1,'2020-07-30 09:31:22','2020-08-07 08:50:48'),(200,'report','p_api_request','The number of times your app has requested an ad recorded by ad network','',1,'2020-07-30 09:31:55','2020-07-30 09:31:55'),(201,'report','p_instance','View performance across the unique instances of each ad network that appear in this report.','',1,'2020-07-30 09:32:33','2020-07-30 09:32:33'),(202,'report','p_scenes','View performance for individual scenes','',1,'2020-07-30 09:33:40','2020-07-30 09:33:40'),(203,'report','p_ctr','The number of clicks compared to the number of impressions recorded by AdTiming SDK. CTR is calculated as clicks divided by impressions.','',1,'2020-07-30 09:35:24','2020-07-30 09:35:24'),(204,'report','p_api_ctr','The number of clicks compared to the number of impressions recorded by ad network. API CTR is calculated as API clicks divided by API impressions.','',1,'2020-07-30 09:36:52','2020-07-30 09:36:52'),(205,'report','p_fills','The number of times the ad network returns an ad in response to an ad request recorded by AdTiming SDK. ','',1,'2020-07-30 09:37:36','2020-07-30 09:37:36'),(206,'report','p_api_fills','The number of times the ad network returns an ad in response to an ad request recorded by ad network. ','',1,'2020-07-30 09:38:42','2020-07-30 09:38:42'),(207,'report','p_fillrate','The number of ads that ad network returns compared to the number of ads requested recorded by AdTiming SDK. Fill rate is calculated as fills divided by requests.','',1,'2020-07-30 09:39:20','2020-07-30 09:39:20'),(208,'report','p_api_fillrate','The number of ads that ad network returns compared to the number of ads requested recorded by ad network. API Fill rate is calculated as API fills divided by API requests.','',1,'2020-07-30 09:39:43','2020-07-30 09:39:43'),(209,'report','p_api_click','The number of clicks on your ads recorded by ad network','',1,'2020-07-30 09:40:15','2020-07-30 09:40:15'),(210,'report','p_click','The number of clicks on your ads recorded by AdTiming SDK.','',1,'2020-07-30 09:40:41','2020-07-30 09:40:41'),(211,'report','p_api_impr','Total number of times the ad is shown recorded by ad network.','',1,'2020-07-30 09:41:03','2020-07-30 09:41:13'),(212,'report','p_impr','Total number of times the ad is shown recorded by AdTiming SDK.','',1,'2020-07-30 09:41:35','2020-07-30 09:41:35'),(213,'report','p_cost','The total amount of revenue generated','',1,'2020-07-30 09:41:59','2020-07-30 09:41:59'),(214,'report','p_ecpm','Effective cost per thousand Impressions, calculated as (Revenue / API Impressions) * 1000','',1,'2020-07-30 09:42:20','2020-07-30 10:51:32'),(215,'report','p_a_check','The number of times an ad source is asked whether it is ready to show an ad','',1,'2020-07-30 09:43:20','2020-07-30 09:43:20'),(216,'report','p_a_response','The number of times an ad source had an ad available to show at the time of the request','',1,'2020-07-30 09:43:53','2020-07-30 09:43:53'),(217,'report','p_a_rate','The rate at which an ad source had an ad available when an ad was requested','',1,'2020-07-30 09:44:33','2020-07-30 09:44:33'),(218,'report','p_video_completions','The amount of Video Completions','',1,'2020-07-30 09:44:58','2020-07-30 09:44:58'),(219,'report','p_video_start','The amount of Video Start','',1,'2020-07-30 09:45:30','2020-07-30 09:45:30'),(220,'report','i_day','View performance by Date','',1,'2020-07-30 09:27:21','2020-07-30 09:27:21'),(221,'report','i_hour','View performance by Hour','',1,'2020-07-30 09:28:08','2020-07-30 09:28:08'),(222,'report','i_adtype','View performance by ad type (e.g., Banner, Interstitial).','',1,'2020-07-30 09:28:54','2020-07-30 09:28:54'),(223,'report','i_country','View performance broken down by the region of visitors that have viewed ads on your app.','',1,'2020-07-30 09:29:31','2020-07-30 09:29:31'),(224,'report','i_placement','View performance for individual ad placements.','',1,'2020-07-30 09:30:07','2020-07-30 09:30:07'),(225,'report','i_bidsource','View performance by bid source.','',1,'2020-07-30 09:30:35','2020-07-30 09:30:35'),(226,'report','i_app','View performance by app.','',1,'2020-07-30 09:30:56','2020-07-30 09:30:56'),(227,'report','i_instance','View performance across the unique instances of each ad network that appear in this report.','',1,'2020-07-30 09:32:33','2020-07-30 09:32:33'),(228,'report','i_request','The number of requests made to an In-app Bidding ad network.','',1,'2020-07-30 09:40:41','2020-07-30 09:40:41'),(229,'report','i_response','The number of bids submitted by the ad network that participated in In-app Bidding auctions. ','',1,'2020-07-30 09:41:03','2020-07-30 09:41:13'),(230,'report','i_bidrate','The percentage of bids that participated in In-app Bidding auctions. ','',1,'2020-07-30 09:43:20','2020-07-30 09:43:20'),(231,'report','i_win','The number of bids that won in an request.','',1,'2020-07-30 09:43:53','2020-07-30 09:43:53'),(232,'report','i_winrate','The percentage of bids that won an In-app Bidding auction.','',1,'2020-07-30 09:44:33','2020-07-30 09:44:33'),(233,'report','i_impr','Total number of times the ad is shown. ','',1,'2020-07-30 09:41:35','2020-07-30 09:41:35'),(234,'report','i_cost','The total amount of revenue generated','',1,'2020-07-30 09:41:59','2020-07-30 09:41:59'),(235,'report','i_ecpm','Effective cost per thousand Impressions; calculated as (Revenue / Impressions) * 1000','',1,'2020-07-30 09:42:20','2020-07-30 10:51:32'),(236,'placement','brand_tip','','',1,'2020-06-19 03:07:09','2020-08-12 03:52:22'),(237,'placement','model_tip','','',1,'2020-06-19 03:07:09','2020-08-12 03:52:25'),(238,'mediation','fanout_tip','','',1,'2020-07-14 09:31:45','2020-08-12 06:19:36'),(239,'mediation','batchsize_tip','Batch Size','',1,'2020-07-14 09:31:45','2020-07-29 07:23:19'),(240,'mediation','preload_tip','Preload Timeout(s)','',1,'2020-07-14 09:31:45','2020-07-29 07:23:19'),(241,'mediation','poolsize_tip','Pool Size','',1,'2020-07-14 09:31:45','2020-07-29 07:23:19'),(242,'mediation','inventory_interval_tip','Inventory Interval','',1,'2020-07-14 09:31:45','2020-07-29 07:23:19'),(243,'mediation','max_concurrency_tip','Max Concurrency','',1,'2020-07-14 09:31:45','2020-08-12 06:20:45');

CREATE TABLE `report_adnetwork_account_publisher` (
  `publisher_id` int(11) NOT NULL DEFAULT '0' COMMENT 'publisher ID',
  `report_account_id` int(11) NOT NULL DEFAULT '0' COMMENT 'AdNetwork账号ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`publisher_id`,`report_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='adnetwork账号和publisher关系表';

INSERT INTO report_adnetwork_account_publisher (publisher_id, report_account_id) SELECT distinct c.publisher_id, b.id FROM om_adnetwork_app a inner JOIN report_adnetwork_account b ON a.report_account_id = b.id inner join om_publisher_app c on (a.pub_app_id=c.id);
ALTER TABLE om_publisher_app DROP INDEX `app_id`;
-- 20200815
ALTER TABLE `report_adnetwork_account` ADD COLUMN `error_id` int(11) NOT NULL DEFAULT '0' COMMENT '对应report_adnetwork_error.id' AFTER reason,ALGORITHM=INPLACE, LOCK=NONE;
ALTER TABLE `stat_adnetwork` ADD `bid` TINYINT(3)  NOT NULL  DEFAULT '0'  COMMENT 'instance bid状态,0:非bid,1:bid'  AFTER `instance_id`,ALGORITHM=INPLACE, LOCK=NONE;
ALTER TABLE `report_adnetwork_linked` ADD `bid` TINYINT(3)  NOT NULL  DEFAULT '0'  COMMENT 'instance bid状态,0:非bid,1:bid'  AFTER `instance_id`,ALGORITHM=INPLACE, LOCK=NONE;

CREATE TABLE `report_adnetwork_error` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `adn_id` int(11) NOT NULL DEFAULT '0' COMMENT 'AdNetworkId',
  `error_code` varchar(50) NOT NULL DEFAULT '0' COMMENT '错误Code',
  `reason` varchar(1000) DEFAULT NULL COMMENT '原因',
  `content` text COMMENT '错误信息-英文',
  `solution` text COMMENT '解决方案-英文',
  `solution_cn` text COMMENT '解决方案-中文',
  `is_ignore` tinyint(3) NOT NULL DEFAULT '1' COMMENT '是否忽略该错误，0:否，1:忽略',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0:disabled,1:Active',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='report api 拉取错误处理配置';

-- 20200817
ALTER TABLE om_adnetwork CHANGE COLUMN `class_name` `class_name` VARCHAR(20) NOT NULL DEFAULT '' COMMENT 'SDK className prefix' ;
INSERT INTO om_adnetwork (`id`,`name`,`class_name`,`type`,`ios_adtype`,`android_adtype`,`sdk_version`,`descn`,`status`,`publisher_visible`,`bid_endpoint`,`create_time`,`lastmodify`) VALUES (17,'ChartboostBid','ChartboostBid',12,12,12,'','ChartboostBid',0,1,NULL,'2020-07-10 15:49:00','2020-07-28 15:44:30');
INSERT INTO om_adnetwork (`id`,`name`,`class_name`,`type`,`ios_adtype`,`android_adtype`,`sdk_version`,`descn`,`status`,`publisher_visible`,`bid_endpoint`,`create_time`,`lastmodify`) VALUES (30,'fyber','Fyber',1,1,1,NULL,'Fyber',1,1,NULL,'2020-04-28 10:46:33','2020-04-28 15:22:50');

-- 20200821
INSERT INTO `om_adnetwork` (`id`, `name`, `class_name`, `type`, `ios_adtype`, `android_adtype`, `sdk_version`, `descn`, `status`, `publisher_visible`, `bid_endpoint`, `create_time`, `lastmodify`) VALUES (18, X'4D696E74', X'4D696E74', 15, 15, 15, X'', X'4D696E74', 1, 1, NULL, '2020-08-20 17:20:42', '2020-08-21 14:32:14');

-- 20200828
CREATE TABLE IF NOT EXISTS `report_mint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `country` varchar(3) DEFAULT NULL COMMENT 'country alpha2',
  `platform` varchar(50) DEFAULT NULL COMMENT 'Platform Android/iOS',
  `app_id` varchar(50) DEFAULT NULL COMMENT 'Mint App ID',
  `tag_id` varchar(50) DEFAULT NULL COMMENT 'Mint Placement ID',
  `request` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'mint request count',
  `fill` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'mint request count',
  `impression` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'mint impression count',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'mint click count',
  `revenue` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT 'mint revenue',
  `app_key` varchar(100) DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`day`),
  KEY `country` (`country`),
  KEY `day` (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (to_days(`day`))
(PARTITION p202008 VALUES LESS THAN (738034) ENGINE = InnoDB,
 PARTITION p202009 VALUES LESS THAN (738064) ENGINE = InnoDB,
 PARTITION p202010 VALUES LESS THAN (738095) ENGINE = InnoDB,
 PARTITION p202011 VALUES LESS THAN (738125) ENGINE = InnoDB,
 PARTITION p202012 VALUES LESS THAN (738156) ENGINE = InnoDB) */;

ALTER TABLE report_adnetwork_linked
ADD COLUMN `report_account_id` int(11) NOT NULL DEFAULT '0' COMMENT 'report_adnetwork_account.id' AFTER `adn_placement_key`;
ALTER TABLE stat_adnetwork
ADD COLUMN `report_account_id` int(11) NOT NULL DEFAULT '0' COMMENT 'report_adnetwork_account.id' AFTER `adn_account_key`;

-- 2020-09-10
CREATE TABLE IF NOT EXISTS `report_helium` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `app` varchar(200) DEFAULT NULL COMMENT 'app id',
  `demand_source` varchar(100) DEFAULT NULL COMMENT 'demand_source',
  `helium_placement_name` varchar(200) DEFAULT NULL COMMENT 'helium_placement_name',
  `placement_type` varchar(50) DEFAULT NULL COMMENT 'Placement Type',
  `requests` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '请求次数',
  `valid_bids` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '有效出价次数',
  `winning_bids` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'win bid次数',
  `impressions` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '展示次数',
  `estimated_earnings` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT '预估收入',
  `user_id` varchar(100) DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (to_days(`day`))
(PARTITION p202009 VALUES LESS THAN (738064) ENGINE = InnoDB,
 PARTITION p202010 VALUES LESS THAN (738095) ENGINE = InnoDB,
 PARTITION p202011 VALUES LESS THAN (738125) ENGINE = InnoDB,
 PARTITION p202012 VALUES LESS THAN (738156) ENGINE = InnoDB);
			    
alter table `report_adnetwork_error` add column `solution_url` varchar(1000) DEFAULT NULL COMMENT 'solution_url' after `solution_cn`;
truncate table report_adnetwork_error;
INSERT INTO `report_adnetwork_error` (`id`, `adn_id`, `error_code`, `reason`, `content`, `solution`, `solution_cn`, `solution_url`, `is_ignore`, `status`, `create_time`, `lastmodify`)
VALUES
	(1, 2, '400', 'invalid_grant\r\nToken has been expired or revoked.', '400 Bad Request\r\n{\r\n  \"error\" : \"invalid_grant\",\r\n  \"error_description\" : \"Token has been expired or revoked.\"\r\n}', 'Token has been expired or revoked.\nYou can login with google account on the Adnetwork Page.', '配置的账号未授权，建议采用登录授权方式配置', NULL, 0, 1, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(2, 2, '403', 'noAdSenseAccount\r\nUser does not have an AdSense account.', '403 Forbidden\r\n{\r\n  \"code\" : 403,\r\n  \"errors\" : [ {\r\n    \"domain\" : \"global\",\r\n    \"message\" : \"User does not have an AdSense account.\",\r\n    \"reason\" : \"noAdSenseAccount\"\r\n  } ],\r\n  \"message\" : \"User does not have an AdSense account.\"\r\n}', 'User does not have an AdSense account.', '', NULL, 0, 1, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(3, 2, '403', 'accountPendingReview\r\nUsers account is pending review.', '403 Forbidden\r\n{\r\n  \"code\" : 403,\r\n  \"errors\" : [ {\r\n    \"domain\" : \"global\",\r\n    \"message\" : \"Users account is pending review.\",\r\n    \"reason\" : \"accountPendingReview\"\r\n  } ],\r\n  \"message\" : \"Users account is pending review.\"\r\n}', 'No further processing required.', '等待Adsense审核，审核周期一般未1到2周，\r\napp上线起量后可以加快审核周期\r\n审核完成后重跑数据', NULL, 1, 1, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(4, 2, '403', 'disapprovedAccount\r\nUsers account has been disapproved.', '403 Forbidden\r\n{\r\n  \"code\" : 403,\r\n  \"errors\" : [ {\r\n    \"domain\" : \"global\",\r\n    \"message\" : \"Users account has been disapproved.\",\r\n    \"reason\" : \"disapprovedAccount\"\r\n  } ],\r\n  \"message\" : \"Users account has been disapproved.\"\r\n}', 'Users account has been disapproved.\nYou can use other accounts to continue.', '账号被封，建议更换admob账号或者向admob申述', NULL, 0, 1, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(5, 2, '403', 'accessNotConfigured\r\nAccess Not Configured.\r\nAdSense Management API has not been used in project', '403 Forbidden\r\n{\r\n  \"code\" : 403,\r\n  \"errors\" : [ {\r\n    \"domain\" : \"usageLimits\",\r\n    \"message\" : \"Access Not Configured. AdSense Management API has not been used in project 1012544621744 before or it is disabled. Enable it by visiting https://console.developers.google.com/apis/api/adsense.googleapis.com/overview?project=1012544621744 then retry. If you enabled this API recently, wait a few minutes for the action to propagate to our systems and retry.\",\r\n    \"reason\" : \"accessNotConfigured\",\r\n    \"extendedHelp\" : \"https://console.developers.google.com/apis/api/adsense.googleapis.com/overview?project=1012544621744\"\r\n  } ],\r\n  \"message\" : \"Access Not Configured. AdSense Management API has not been used in project 1012544621744 before or it is disabled. Enable it by visiting https://console.developers.google.com/apis/api/adsense.googleapis.com/overview?project=1012544621744 then retry. If you enabled this API recently, wait a few minutes for the action to propagate to our systems and retry.\"\r\n}', '', '账号未开启Adsense Management API，\r\n1.登录https://console.developers.google.com/\r\n2.找到菜单【API和服务】->【库】\r\n3.在搜索框中输入Adsense,结果中找到AdSense Mangement API\r\n4.点击AdSense Mangement API进入管理页面，\r\n点击开启', NULL, 0, 1, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(6, 2, '403', 'accessNotConfigured\r\nis not found and cannot be used for API calls\r\nIf it is recently created, enable AdSense Management API by visiting\r\nIf you enabled this API recently, wait a few minutes for the action to propagate to our systems and retry.', '403 Forbidden\r\n{\r\n  \"code\" : 403,\r\n  \"errors\" : [ {\r\n    \"domain\" : \"usageLimits\",\r\n    \"message\" : \"Project 410701524744 is not found and cannot be used for API calls. If it is recently created, enable AdSense Management API by visiting https://console.developers.google.com/apis/api/adsense.googleapis.com/overview?project=410701524744 then retry. If you enabled this API recently, wait a few minutes for the action to propagate to our systems and retry.\",\r\n    \"reason\" : \"accessNotConfigured\",\r\n    \"extendedHelp\" : \"https://console.developers.google.com/apis/api/adsense.googleapis.com/overview?project=410701524744\"\r\n  } ],\r\n  \"message\" : \"Project 410701524744 is not found and cannot be used for API calls. If it is recently created, enable AdSense Management API by visiting https://console.developers.google.com/apis/api/adsense.googleapis.com/overview?project=410701524744 then retry. If you enabled this API recently, wait a few minutes for the action to propagate to our systems and retry.\"\r\n}', 'No further processing required.', '未开启AdSense Management API，如果是刚开启AdSense Management API需要等待一段时间才能生效，建议等1到2小时后重现开启账号自动拉取数据', NULL, 1, 1, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(7, 2, '404', 'notFound\r\nAccount not found.', '404 Not Found\r\n{\r\n  \"code\" : 404,\r\n  \"errors\" : [ {\r\n    \"domain\" : \"global\",\r\n    \"location\" : \"accountId\",\r\n    \"locationType\" : \"parameter\",\r\n    \"message\" : \"Account not found.\",\r\n    \"reason\" : \"notFound\"\r\n  } ],\r\n  \"message\" : \"Account not found.\"\r\n}', 'The Account was not found,\r\nPlease recreated and reauthorized the OAuth 2.0 client on the credentials page.', '老的数据拉取方式才会存在的问题，未找到对应的账号,\r\n建议重现创建凭据中OAuth2.0客户端，重现授权', NULL, 0, 1, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(8, 2, '500', 'Unrecognized token\r\nUnexpected character', 'Unrecognized token\r\nUnexpected character', 'Invalid Refresh Token.\nYou can login with google account on the Adnetwork Page.', '手动配置的RefreshToken错误', NULL, 0, 1, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(9, 2, '0', 'adsense is null', 'adsense is null', NULL, NULL, NULL, 0, 0, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(10, 2, '0', 'Invalid Configuration', 'Invalid Configuration', 'Invalid Configuration.\nYou can login with google account on the Adnetwork Page.', NULL, NULL, 0, 0, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(11, 2, '401', 'Unauthorized', '401 Unauthorized', 'You can login with google account on the Adnetwork Page.', NULL, NULL, 0, 0, '2020-09-10 17:30:02', '2020-09-10 17:30:02'),
	(12, 3, '500', 'connect failed\r\nNetwork is unreachable', 'Network is unreachable', 'No further processing required.', '请求网络异常', NULL, 1, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(13, 3, '2', 'An unexpected error has occurred\r\nPlease retry your request later.', 'An unexpected error has occurred. Please retry your request later.', 'No further processing required.', 'Facebook API服务异常，稍后重试', NULL, 1, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(14, 3, '190', 'Invalid OAuth access token', 'Invalid OAuth access token.', 'Invalid OAuth access token.\nPlease according to the https://developers.facebook.com/docs/audience-network/guides/reporting/system-user#system-user-token-generation configuration.', '无效配置，建议参照https://developers.facebook.com/docs/audience-network/guides/reporting/system-user配置System Access Token', NULL, 0, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(15, 3, '190', 'Error validating application. \r\nApplication has been deleted.', 'Error validating application. Application has been deleted.', 'Error validating application. Facebook App has been deleted.', '应用在Facebook已被移除,建议重新创建应用、资产、重新生成System Access Token', NULL, 0, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(16, 3, '200', 'API access deactivated', 'API access deactivated. To reactivate, go to the app dashboard.', 'API access deactivated. To reactivate, go to the app dashboard.', 'APP ID配置错误	取,建议取Placement ID的前半部分', NULL, 0, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(17, 3, '3000', '(#3000) Reading insights of a Page, business, app, domain or event source group not owned by the querying user or application', '(#3000) Reading insights of a Page, business, app, domain or event source group not owned by the querying user or application', 'Reading insights of a Page, business, app, domain, or event source group not owned by the querying user or application.\r\nWith reference to https://developers.facebook.com/docs/audience-network/guides/reporting/system-user#system-user-token-generation to check whether there is missing configuration', '应用、资产授权问题，建议检查应用、资产和【read_audience_network_insights】权限是否配置正确', NULL, 0, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(18, 3, '100', 'Unsupported post request. \r\ncannot be loaded due to missing permissions, or does not support this operation', 'Unsupported post request. Object with ID 2560797560800400 does not exist, cannot be loaded due to missing permissions, or does not support this operation. Please read the Graph API documentation at https://developers.facebook.com/docs/graph-api', 'App ID does not match.\r\na) Go to the Monetization Manager.\r\nb) Click on the Managed property\r\nc) Click on Ad Spaces then scroll down to Placements, or filter to find the placement that you need\r\nd) In the Placement ID column click Get Code\r\ne) Copy the first part of the placement id (until the underscore)', 'APP ID配置错误,取Placement的前半部分', NULL, 0, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(19, 3, '4', '(#4) Application request limit reached', '{\"code\":4,\"message\":\"(#4) Application request limit reached\",\"type\":\"OAuthException\",\"is_transient\":true,\"fbtrace_id\":\"A7lTi3wHgezb5KyGf3fUv6O\"}\r\n', 'No further processing required.', '', NULL, 1, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(20, 3, '190', 'Bad signature', '{\"code\":190,\"message\":\"Bad signature\",\"type\":\"OAuthException\",\"fbtrace_id\":\"AO_kQs8VbiSxCA_TK_IdRqi\"}', NULL, NULL, NULL, 0, 1, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(21, 3, '803', 'Some of the aliases you requested do not exist', '{\"code\":803,\"message\":\"(#803) Some of the aliases you requested do not exist: free.pixel.games.tap.color.by.number\",\"type\":\"OAuthException\",\"fbtrace_id\":\"AxrD3yVsNj_bB71UQFWxoEP\"}', 'Some of the aliases you requested do not exist', NULL, NULL, 0, 0, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(22, 3, '190', 'Session has expired on', '{\"code\":190,\"error_subcode\":463,\"message\":\"Error validating access token: Session has expired on Monday, 03-Aug-20 00:43:13 PDT. The current time is Thursday, 13-Aug-20 03:19:16 PDT.\",\"type\":\"OAuthException\",\"fbtrace_id\":\"Asl6to3h3fsUbuYbLjjgyox\"}', NULL, NULL, NULL, 0, 0, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(23, 3, '0', 'Illegal character in query at index', 'Illegal character in query at index 515: https://graph.facebook.com/v2.11/178443763543088/adnetworkanalytics/?since=2020-08-13&until=2020-08-13&aggregation_period=day&metrics=[\'fb_ad_network_revenue\',\'fb_ad_network_cpm\',\'fb_ad_network_request\',\'fb_ad_network_click\',\'fb_ad_network_imp\',\'fb_ad_network_filled_request\',\'fb_ad_network_video_guarantee_revenue\',\'fb_ad_network_video_view\',\'fb_ad_network_video_mrc\',\'fb_ad_network_bidding_request\',\'fb_ad_network_bidding_response\']&breakdowns=[\'country\',\'app\',\'placement\',\'platform\']&access_token=178443763543088|_PBAs0Xqa0XUVhIZBrSNTGEee9k', 'Invalid System Access Token', NULL, NULL, 0, 0, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(24, 3, '190', 'The session has been invalidated because the user changed their password or Facebook has changed the session for security reasons.', '{\"code\":190,\"error_subcode\":460,\"message\":\"Error validating access token: The session has been invalidated because the user changed their password or Facebook has changed the session for security reasons.\",\"type\":\"OAuthException\",\"fbtrace_id\":\"Af1LVsocZDb57sQl4G1zw_Q\"}', 'Error validating access token: The session has been invalidated because the user changed their password or Facebook has changed the session for security reasons.', NULL, NULL, 0, 0, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(25, 3, '190', 'The application does not belong to system user\'s businessor its aggregators\'s business', '{\"code\":190,\"error_subcode\":465,\"message\":\"Error validating access token: The application does not belong to system user\'s businessor its aggregators\'s business\",\"type\":\"OAuthException\",\"fbtrace_id\":\"Al0A0p4HSrVPy8hyhpv4f3c\"}', NULL, NULL, NULL, 0, 0, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(26, 3, '0', 'response status:requested', 'response status:requested', NULL, NULL, NULL, 1, 0, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(27, 3, '0', 'response status:invalid', 'response status:invalid', NULL, NULL, NULL, 1, 0, '2020-09-10 17:31:18', '2020-09-10 17:31:18'),
	(28, 4, '401', 'invalid access token', '{\"errors\":[{\"msg\":\"invalid access token\"}]}', 'Invalid Monetization Stats API key.', 'API Key配置错误', NULL, 0, 1, '2020-09-10 17:31:52', '2020-09-10 17:31:52'),
	(29, 4, '404', 'organization not found', '{\"errors\":[{\"msg\":\"organization not found\"}]}', 'Invalid Organization core Id.', '组织ID配置错误', NULL, 0, 1, '2020-09-10 17:31:52', '2020-09-10 17:31:52'),
	(30, 4, '0', 'Illegal character in path at index', 'getJsonData error,error:Illegal character in path at index 84: https://monetization.api.unity.com/stats/v1/operate/organizations/Gudiance-Unity-ORG ID?apikey=1232134213124124121&fields=adrequest_count,start_count,view_count,available_sum,revenue_sum&groupBy=game,platform,placement,country&start=2020-08-13T07:00:00.000Z&end=2020-08-13T07:59:59.999Z&scale=hour', 'Invalid Monetization Stats API key.', NULL, NULL, 0, 0, '2020-09-10 17:31:52', '2020-09-10 17:31:52'),
	(31, 5, '401', 'invalid authentication', '{\"status\":\"invalid authentication\", \"error\": \"Key length should be 32 instead of 24\"}', 'Invalid Reporting API Key.', 'report api key配置错误，建议在Vungle平台右上角点My Account,找到Reporting API Key', NULL, 0, 1, '2020-09-10 17:32:09', '2020-09-10 17:32:09'),
	(32, 7, '401', 'user_credentials is incorrect', '{\"status\":\"error\",\"status_code\":401,\"result\":\"user_credentials is incorrect\"}', 'user_credentials is incorrect', '配置的API Key不对，建议取Read-Only API Key', NULL, 0, 1, '2020-09-10 17:33:04', '2020-09-10 17:33:04'),
	(33, 8, '403', 'Authentication Failed', 'Authentication Failed', 'From your Account page, choose \"Keys\" in the left sidebar, then select the Report Key. If you do not see the Report Key field, email support@applovin.com and request your reporting key.', '鉴权失败，配置的Report Key不对', NULL, 0, 1, '2020-09-10 17:33:37', '2020-09-10 17:33:37'),
	(34, 8, '502', '502 Bad Gateway', 'request report response statusCode:502,msg:<html>\r\n<head><title>502 Bad Gateway</title></head>\r\n<body>\r\n<center><h1>502 Bad Gateway</h1></center>\r\n<hr><center>nginx</center>\r\n</body>\r\n</html>\r\n', NULL, NULL, NULL, 1, 0, '2020-09-10 17:33:37', '2020-09-10 17:33:37'),
	(35, 9, '422', 'Data is not available for that date.\r\nData is not available', 'Data is not available for that date.', 'No further processing required.', 'mobpub数据未准备好', NULL, 1, 1, '2020-09-10 17:34:01', '2020-09-10 17:34:01'),
	(36, 9, '422', 'Invalid report_key.', 'Invalid report_key.', 'This is available on the App Info tab under Settings -> App Settings on the Tapjoy Monetization Dashboard.', 'Inventory Report ID配置错误，This is available on the App Info tab under Settings -> App Settings on the Tapjoy Monetization Dashboard.', NULL, 0, 1, '2020-09-10 17:34:01', '2020-09-10 17:34:01'),
	(37, 9, '429', 'You have made too many requests, please try again later.', 'You have made too many requests, please try again later.', 'No further processing required.', '请求过多', NULL, 1, 1, '2020-09-10 17:34:01', '2020-09-10 17:34:01'),
	(38, 11, '401', 'Unauthorized', 'Unauthorized', 'This is available on the App Info tab under Settings -> App Settings on the Tapjoy Monetization Dashboard.', 'Publisher Reporting API Key配置错误', NULL, 0, 1, '2020-09-10 17:34:29', '2020-09-10 17:34:29'),
	(39, 11, '503', 'Service Unavailable', 'Service Unavailable\r\nNo server is available to handle this request.', 'No further processing required.', 'tapjoy服务问题', NULL, 1, 1, '2020-09-10 17:34:29', '2020-09-10 17:34:29'),
	(40, 12, '403', 'Invalid user id/signature combination for user', 'Invalid user id/signature combination for user\r\nPlease check that you are not passing auth as both a Cookie and Url Parameters.', 'Invalid User Id/Signature combination for user.\r\nYou can find your games User ID and User Signature on its API Settings page on the Chartboost dashboard.', 'user id/signature配置错误', NULL, 0, 1, '2020-09-10 17:34:42', '2020-09-10 17:34:42'),
	(41, 12, '0', 'downJsonData failed', 'Invalid Configuration', NULL, NULL, NULL, 0, 0, '2020-09-10 17:34:42', '2020-09-10 17:34:42'),
	(42, 13, '0', 'Illegal character in query at index', 'Illegal character in query at index 132: http://ad.oceanengine.com/union/media/open/api/report/slot?time_granularity=STAT_TIME_GRANULARITY_DAILY&user_id=Gudiance-Pangle-User ID&sign=3e748c1c4dca63b0c7938d0265e38f66ab7cf156&nonce=812&timestamp=1597317612270&start_date=2020-08-12&end_date=2020-08-12', NULL, NULL, NULL, 0, 0, '2020-09-10 17:35:02', '2020-09-10 17:35:02'),
	(43, 14, 'input.error.date', 'input.error.date', '[\"start : Cannot query dates larger than today.\",\"end : Cannot query dates larger than today.\"]', 'Cannot query todays data, please contact Mintegral Account Manager for granting hourly data access.', '无法拉取当天数据，需要找Mintegral的AM开通小时级数据权限', NULL, 1, 1, '2020-09-10 17:35:40', '2020-09-10 17:35:40'),
	(44, 14, 'system.error.skey', 'system.error.skey', 'system.error.skey', 'Invaild Report API SKey.\nYou can find Report API SKey on the Mintegral Dashboard.', NULL, NULL, 0, 1, '2020-09-10 17:35:40', '2020-09-10 17:35:40'),
	(45, 15, '401', 'Unauthorized request', 'Unauthorized request', 'Invalid User Name or User Secret.', 'User Name或User Secret配置错误', NULL, 0, 1, '2020-09-10 17:35:40', '2020-09-10 17:35:40'),
	(46, 15, '403', 'Forbidden operation', 'Forbidden operation', 'No further processing required.', '', NULL, 0, 1, '2020-09-10 17:35:40', '2020-09-10 17:35:40'),
	(47, 15, '500', 'An internal error has occurred', 'An internal error has occurred', 'No further processing required.', '', NULL, 1, 1, '2020-09-10 17:35:40', '2020-09-10 17:35:40'),
	(48, 15, '502', 'Bad Gateway', 'Bad Gateway', 'No further processing required.', '', NULL, 1, 1, '2020-09-10 17:35:40', '2020-09-10 17:35:40'),
	(49, 15, '503', 'Service Unavailable', 'No server is available to handle this request.', 'No further processing required.', '', NULL, 1, 1, '2020-09-10 17:35:40', '2020-09-10 17:35:40'),
	(50, 15, '504', 'Gateway Time-out', 'The server didnt respond in time.', 'No further processing required.', '', NULL, 1, 1, '2020-09-10 17:35:40', '2020-09-10 17:35:40');

-- 2020-09-23
UPDATE `om_adnetwork` SET status=1 WHERE id=17;

-- 2020-09-30
UPDATE `om_adnetwork` SET `bid_endpoint` = 'https://rtb.api.vungle.com/bid/t/428d94f' WHERE `id` = '5';	

-- 2020-10-27
CREATE TABLE `report_tencent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL DEFAULT '0000-00-00',
  `member_id` varchar(100) DEFAULT NULL COMMENT '开发者账号',
  `medium_name` varchar(200) DEFAULT NULL COMMENT '媒体名称',
  `app_id` varchar(100) DEFAULT NULL COMMENT '媒体id',
  `placement_id` varchar(100) DEFAULT NULL COMMENT '广告位ID',
  `placement_name` varchar(200) DEFAULT NULL COMMENT '广告位名称',
  `placement_type` varchar(100) DEFAULT NULL COMMENT '广告位类型',
  `is_summary` int(1) DEFAULT NULL COMMENT '是否是summary',
  `request_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告位请求量',
  `return_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告位返回量',
  `ad_request_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告请求量',
  `ad_return_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '广告返回量',
  `pv` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '曝光量',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `fill_rate` varchar(100) DEFAULT NULL COMMENT '广告位填充率 (广告位返回量/广告位请求量) return_count/request_count',
  `ad_exposure_rate` varchar(200) DEFAULT NULL COMMENT '广告曝光率 (曝光量/广告返回量) pv/ad return_count',
  `click_rate` varchar(200) DEFAULT NULL COMMENT '广告曝光率 (曝光量/广告返回量) pv/ad return_count',
  `revenue` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT '收入（单位：元）',
  `ecpm` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT '收入/曝光量*1000 （单位：元）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `day` (`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 2020-11-06			    
CREATE TABLE IF NOT EXISTS `stat_user_ltv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL DEFAULT '0000-00-00' COMMENT 'timezone: UTC',
  `base_date` date NOT NULL,
  `retention_day` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'Country a2',
  `publisher_id` int(10) unsigned DEFAULT '0' COMMENT 'publisher.id',
  `pub_app_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'publisher_app.id',
  `user_cnt_new` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_cnt_old` bigint(20) unsigned NOT NULL DEFAULT '0',
  `retention_cnt_new` bigint(20) unsigned NOT NULL DEFAULT '0',
  `retention_cnt_old` bigint(20) unsigned NOT NULL DEFAULT '0',
  `mediation_value_new` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `mediation_value_old` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `iap_value_new` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `iap_value_old` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_value_new` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_value_old` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`day`),
  KEY `day` (`day`),
  KEY `publisher_id` (`publisher_id`),
  KEY `pub_app_id` (`pub_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user ltv, partition by day'
/*!50100 PARTITION BY RANGE (to_days(`day`))
(PARTITION p20201107 VALUES LESS THAN (738102) ENGINE = InnoDB) */

INSERT INTO om_dict (pid, name, value, descn) VALUES (100, 'ltv_date_range', 30, '计算LTV的时间跨度, 单位天');
UPDATE um_permission SET `api_path` = '/report/list\n/report/dau/list\n/report/lr/list\n/report/adnetwork/list\n/report/ltv\n/report/ltv/chart\n/report/retention\n/report/retention/chart' WHERE (`id` = '1800');		    

-- 2020-11-30
CREATE TABLE IF NOT EXISTS `stat_adn_dau` (
     `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
     `day` date NOT NULL COMMENT 'timezone: UTC',
     `adn_id` int(10) unsigned DEFAULT '0' COMMENT 'Adnetwork id',
     `platform` tinyint(2) unsigned NOT NULL COMMENT '0:iOS,1:Android',
     `country` varchar(4) DEFAULT NULL COMMENT 'Country a2',
     `ip_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ip的个数',
     `did_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'gaid or idfa 的个数',
     `dau` int(10) unsigned NOT NULL DEFAULT '0',
     `deu` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当日打开了App且观看了广告的人数',
     `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
     PRIMARY KEY (`id`,`day`),
     KEY `day` (`day`),
     KEY `adn_id` (`adn_id`)
     ) COMMENT='DAU & DEU, partition by day';
			    
CREATE TABLE IF NOT EXISTS `stat_placement_dau` (
     `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
     `day` date NOT NULL COMMENT 'timezone: UTC',
     `adn_id` int(10) unsigned DEFAULT '0' COMMENT 'Adnetwork id',
     `publisher_id` int(10) unsigned DEFAULT '0' COMMENT 'publisher.id',
     `pub_app_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'publisher_app.id',
     `placement_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'placement id',
     `platform` tinyint(2) unsigned NOT NULL COMMENT '0:iOS,1:Android',
     `country` varchar(4) DEFAULT NULL COMMENT 'Country a2',
     `ip_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ip的个数',
     `did_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'gaid or idfa 的个数',
     `dau` int(10) unsigned NOT NULL DEFAULT '0',
     `deu` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当日打开了App且观看了广告的人数',
     `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
     PRIMARY KEY (`id`,`day`),
     KEY `day` (`day`),
     KEY `adn_id` (`adn_id`),
     KEY `publisher_id` (`publisher_id`),
     KEY `pub_app_id` (`pub_app_id`),
     KEY `placement_id` (`placement_id`)
     ) COMMENT='DAU & DEU, partition by day';
 
CREATE TABLE IF NOT EXISTS `stat_instance_dau` (
     `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
     `day` date NOT NULL COMMENT 'timezone: UTC',
     `adn_id` int(10) unsigned DEFAULT '0' COMMENT 'Adnetwork id',
     `publisher_id` int(10) unsigned DEFAULT '0' COMMENT 'publisher.id',
     `pub_app_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'publisher_app.id',
     `placement_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'placement id',
     `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'instance id',
     `platform` tinyint(2) unsigned NOT NULL COMMENT '0:iOS,1:Android',
     `country` varchar(4) DEFAULT NULL COMMENT 'Country a2',
     `ip_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ip的个数',
     `did_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'gaid or idfa 的个数',
     `dau` int(10) unsigned NOT NULL DEFAULT '0',
     `deu` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当日打开了App且观看了广告的人数',
     `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
     PRIMARY KEY (`id`,`day`),
     KEY `day` (`day`),
     KEY `adn_id` (`adn_id`),
     KEY `publisher_id` (`publisher_id`),
     KEY `pub_app_id` (`pub_app_id`),
     KEY `placement_id` (`placement_id`),
     KEY `instance_id` (`instance_id`)
     ) COMMENT='DAU & DEU, partition by day';			    

CREATE TABLE IF NOT EXISTS `om_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `md5_file` char(32) NOT NULL DEFAULT '',
  `path` varchar(100) NOT NULL DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5_file` (`md5_file`)
  ) ;			    
			    
  INSERT INTO um_permission (`id`, `pid`, `type`, `title`, `name`, `sort_index`, `sort_index_ext`, `status`) VALUES ('37', '11', 'perm', 'Cross Bid', 'cross_bid', '0', '0', '1');
  INSERT INTO um_permission (`id`,`pid`,`type`,`title`,`name`,`api_path`,`sort_index`,`sort_index_ext`,`descn`,`status`,`create_time`,`lastmodify`) VALUES (3700,37,'action','Query','query','/cross/bid/get_select_apps\n/cross/bid/get_campaign\n/cross/bid/get_campaigns\n/cross/bid/get_creative\n/cross/bid/get_creatives\n/cross/bid/get_material\n/cross/bid/get_materials\n/cross/bid/get_templates',0,0,NULL,1,'2020-04-21 17:48:35','2020-10-21 16:51:26');
  INSERT INTO um_permission (`id`,`pid`,`type`,`title`,`name`,`api_path`,`sort_index`,`sort_index_ext`,`descn`,`status`,`create_time`,`lastmodify`) VALUES (3701,37,'action','Add','add','/cross/bid/create_campaign\n/cross/bid/create_creative\n/cross/bid/create_material\n/cross/bid/create_creative_material\n/cross/bid/create_material_app_id\n/cross/bid/file_upload',0,0,NULL,1,'2020-04-23 15:59:19','2020-10-09 11:57:14');
  INSERT INTO um_permission (`id`,`pid`,`type`,`title`,`name`,`api_path`,`sort_index`,`sort_index_ext`,`descn`,`status`,`create_time`,`lastmodify`) VALUES (3702,37,'action','Edit','edit','/cross/bid/update_campaign\n/cross/bid/update_campaign_status\n/cross/bid/update_creative\n/cross/bid/update_material\n/cross/bid/delete_creative_material\n/cross/bid/delete_material_app_id',0,0,NULL,1,'2020-04-23 15:59:19','2020-10-10 14:33:21');			    
			    			    
  INSERT INTO um_role_permission (`role_id`,`permission_id`,`create_time`) VALUES (1,37,'2020-10-09 11:58:33'),(2,37,'2020-10-09 12:01:05'),(20,37,'2020-10-09 12:03:05'),(30,37,'2020-10-09 12:03:34'),(40,37,'2020-10-09 12:04:18'),(50,37,'2020-10-09 12:04:18'),(1,3700,'2020-10-09 12:01:51'),(2,3700,'2020-10-09 12:01:05'),(2,3701,'2020-10-09 12:01:05'),(2,3702,'2020-10-09 12:01:05'),(20,3700,'2020-10-09 12:03:05'),(20,3701,'2020-10-09 12:03:05'),(20,3702,'2020-10-09 12:03:05'),(30,3700,'2020-10-09 12:03:34'),(30,3701,'2020-10-09 12:03:34'),(30,3702,'2020-10-09 12:03:34'),(40,3700,'2020-10-09 12:04:18'),(50,3700,'2020-10-09 12:04:18');			    

CREATE TABLE IF NOT EXISTS `os_version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plat` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '0:iOS,1:Android',
  `version` varchar(16) NOT NULL COMMENT '版本号',
  `sub_version` varchar(16) NOT NULL DEFAULT '',
  `title` varchar(40) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastmodify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `version` (`plat`,`sub_version`)
  ) COMMENT='设备版本';		    
			    
INSERT INTO `os_version` VALUES (101, 0, '10', '10.0', 'iOS 10.0', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (108, 0, '10', '10.1', 'iOS 10.1', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (109, 0, '10', '10.2', 'iOS 10.2', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (110, 0, '10', '10.3', 'iOS 10.3', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (120, 0, '11', '11.0', 'iOS 11.0', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (121, 0, '11', '11.1', 'iOS 11.1', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (122, 0, '11', '11.2', 'iOS 11.2', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (123, 0, '11', '11.3', 'iOS 11.3', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (124, 0, '11', '11.4', 'iOS 11.4', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (130, 0, '12', '12.0', 'iOS 12.0', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (131, 0, '12', '12.1', 'iOS 12.1', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (132, 0, '12', '12.2', 'iOS 12.2', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (133, 0, '12', '12.3', 'iOS 12.3', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (134, 0, '12', '12.4', 'iOS 12.4', '2020-10-15 10:43:58', '2020-10-16 11:22:29'), (135, 0, '13', '13.0', 'iOS / iPadOS 13.0', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (136, 0, '13', '13.1', 'iOS / iPadOS 13.1', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (137, 0, '13', '13.2', 'iOS / iPadOS 13.2', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (138, 0, '13', '13.3', 'iOS / iPadOS 13.3', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (139, 0, '13', '13.4', 'iOS / iPadOS 13.4', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (140, 0, '13', '13.5', 'iOS / iPadOS 13.5', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (141, 0, '13', '13.6', 'iOS / iPadOS 13.6', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (142, 0, '13', '13.7', 'iOS / iPadOS 13.7', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (143, 0, '14', '14.0', 'iOS / iPadOS 14.0', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (144, 0, '14', '14.1', 'iOS / iPadOS 14.1', '2020-10-15 10:43:58', '2020-10-16 11:23:47'), (201, 1, '4.4', '4.4', 'Android 4.4', '2020-10-15 10:43:58', '2020-10-16 11:24:24'), (202, 1, '5.0', '5.0', 'Android 5.0', '2020-10-15 10:43:58', '2020-10-16 11:24:24'), (203, 1, '5.1', '5.1', 'Android 5.1', '2020-10-15 10:43:58', '2020-10-16 11:24:24'), (204, 1, '6.0', '6.0', 'Android 6.0', '2020-10-15 10:43:58', '2020-10-16 11:24:24'), (205, 1, '7.0', '7.0', 'Android 7.0', '2020-10-15 10:43:58', '2020-10-16 11:24:24'), (206, 1, '8.0', '8.0', 'Android 8.0', '2020-10-15 10:43:58', '2020-10-16 11:24:24'), (207, 1, '8.1', '8.1', 'Android 8.1', '2020-10-15 10:43:58', '2020-10-19 15:42:02'), (208, 1, '9', '9', 'Android 9', '2020-10-15 11:04:04', '2020-10-16 11:24:24'), (209, 1, '10', '10', 'Android 10', '2020-10-15 11:04:04', '2020-10-16 11:24:24'), (210, 1, '11', '11', 'Android 11', '2020-10-15 11:04:04', '2020-10-16 11:24:24');		    
			    
		    

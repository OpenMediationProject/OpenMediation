INSERT INTO `um_permission` (`id`, `pid`, `type`, `title`, `name`, `api_path`, `sort_index`, `sort_index_ext`, `descn`, `status`, `create_time`, `lastmodify`) VALUES (31, 11, 'perm', 'Company Settings', 'company', '/publisher/get\n/publisher/update\n/publisher/create', 0, 0, NULL, 1, '2020-04-21 17:47:18', '2020-04-22 11:36:17'),(32, 11, 'perm', 'App Settings', 'app_settings', '/publisher/get\n/publisher/update\n/publisher/create', 0, 0, NULL, 1, '2020-04-21 17:47:18', '2020-04-22 11:36:17'),(3100, 31, 'action', 'Query', 'query', '/publisher/payment_info/get\n/publisher/get\n/publisher/account/list\n/publisher/payment_info/list\n/publisher/account/select/list', 0, 0, NULL, 1, '2020-04-21 17:48:35', '2020-05-11 19:22:41'),(3101, 31, 'action', 'Add', 'add', '/publisher/create\n/publisher/account/create\n/publisher/payment_info/create\n/publisher/promote/create', 0, 0, NULL, 1, '2020-04-21 17:48:35', '2020-05-12 14:12:34'),(3102, 31, 'action', 'Edit', 'edit', '/publisher/update\n/publisher/account/update\n/publisher/account/delete\n/publisher/payment_info/update\n/report/google/refreshToken/save\n/report/callback/oauth2authorize\n/register/publisher/complete\n/publisher/verify/ads\n/publisher/promote/update\n/publisher/promote/get', 0, 0, NULL, 1, '2020-04-23 16:00:12', '2020-05-12 14:14:49'),(3200, 32, 'action', 'Query', 'query', '/publisher/list\n/publisher/select/list', 0, 0, NULL, 1, '2020-04-21 17:48:35', '2020-04-23 16:03:16'),(3201, 32, 'action', 'Add', 'add', '/publisher/create', 0, 0, NULL, 1, '2020-04-21 17:48:35', '2020-04-23 15:55:39'),(3202, 32, 'action', 'Edit', 'edit', '/publisher/get\n/publisher/update\n/adnetwork/app/status/update', 0, 0, NULL, 1, '2020-04-23 15:56:54', '2020-04-26 13:09:23');
INSERT INTO `um_role_permission` (`role_id`, `permission_id`, `create_time`) VALUES (1, 31, '2020-04-21 17:49:34'),(1, 32, '2020-04-21 17:49:34'),(1, 3100, '2020-04-21 17:49:34'),(1, 3101, '2020-04-21 17:49:34'),(1, 3102, '2020-04-21 17:49:34'),(1, 3200, '2020-04-21 17:49:34'),(20, 31, '2020-04-14 16:12:21'),(20, 32, '2020-04-21 17:49:34'),(20, 3100, '2020-04-21 04:51:29'),(20, 3101, '2020-04-21 04:51:29'),(20, 3102, '2020-04-23 03:39:37'),(20, 3200, '2020-04-21 17:49:34'),(20, 3201, '2020-05-12 16:43:22'),(20, 3202, '2020-05-12 16:43:22'),(30, 31, '2020-02-20 03:26:11'),(30, 32, '2020-04-21 17:49:34'),(30, 3100, '2020-04-21 04:51:34'),(30, 3101, '2020-04-27 01:45:27'),(30, 3102, '2020-04-27 01:45:27'),(30, 3200, '2020-04-21 17:49:34'),(30, 3201, '2020-04-23 03:38:47'),(30, 3202, '2020-04-23 03:38:47'),(40, 31, '2020-02-20 03:26:11'),(40, 32, '2020-02-20 03:26:11'),(40, 3100, '2020-04-26 04:59:47'),(40, 3101, '2020-04-26 04:59:47'),(40, 3102, '2020-04-26 04:59:47'),(40, 3200, '2020-04-26 04:59:48'),(40, 3201, '2020-04-27 01:58:24'),(40, 3202, '2020-04-27 01:58:25'),(50, 31, '2020-02-20 03:26:11'),(50, 32, '2020-02-20 03:26:11'),(50, 3100, '2020-04-26 04:59:55'),(50, 3200, '2020-04-26 04:59:55');
ALTER TABLE report_adnetwork_account ADD COLUMN `publisher_id` INT(11) NOT NULL AFTER `adn_id`;
ALTER TABLE report_adnetwork_account ADD COLUMN `adn_account_name` VARCHAR(200) NULL AFTER `adn_account_id`,CHANGE COLUMN `adn_account_id` `adn_account_id` INT(11) NULL DEFAULT '0' COMMENT 'AdNetworkId账号ID' ,CHANGE COLUMN `adn_account_owner` `adn_account_owner` TINYINT(3) NULL DEFAULT '0' COMMENT 'Account Owner: 0,Publisher;1,AdTiming;2,No Setting' ;
ALTER TABLE report_adnetwork_account ADD COLUMN `auth_type` TINYINT(3) NOT NULL DEFAULT 0 AFTER `auth_key`;
ALTER TABLE report_adnetwork_account ADD COLUMN `currency` VARCHAR(3) NOT NULL DEFAULT 'USD' AFTER `auth_type`;
ALTER TABLE report_adnetwork_account ADD COLUMN `reason` VARCHAR(2000) NULL DEFAULT NULL AFTER `status`;
UPDATE om_placement_rule_segment SET gender=0;
ALTER TABLE om_placement_rule add `channel` varchar(100) DEFAULT NULL COMMENT '国内Android channel 定向, 换行分隔' after iap_max,add `channel_bow` tinyint(3) NOT NULL DEFAULT '1' COMMENT 'channel 定向方式, 0:黑名单,1:白名单' after channel,add `model_type` int(10) unsigned DEFAULT '0' COMMENT '设备类型定向,二进制,位置:{0:Phone,1:Pad,2:TV}' after channel_bow,modify `gender` tinyint(3) NOT NULL DEFAULT '0' COMMENT '性别定向二进制, 位置{0:男,1:女}';
ALTER TABLE om_placement add `inventory_interval_step` varchar(100) DEFAULT NULL COMMENT '自动补库存阈值间隔, 多行分隔, 单行格式: "{连续失败次数}:{间隔}"' after `inventory_interval`; 
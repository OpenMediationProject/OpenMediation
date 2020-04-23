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
 

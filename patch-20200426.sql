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

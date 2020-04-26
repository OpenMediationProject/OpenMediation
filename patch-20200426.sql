ALTER TABLE `om_adnetwork` ADD `bid_endpoint` VARCHAR(200)  NULL  DEFAULT NULL  AFTER `publisher_visible`;
UPDATE `om_adnetwork` SET bid_endpoint='https://sdk.adtiming.com/a/bid/v1' where id=1;
UPDATE `om_adnetwork` SET bid_endpoint='https://an.facebook.com/${PLATFORM_ID}/placementbid.ortb' where id=3;
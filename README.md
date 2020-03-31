# OpenMediation

OpenMediation is a fully open mediation platform, providing an end-to-end system from SDK to server, Dashboard, and datacentre. OpenMediation's full-featured and full-platform access provides a highly competitive mobile advertising mediation solution:

- Comprehensive support for more than 10 major AdNetwork, including admob, Facebook, applovin, unity, vungle, adcolony, tapjoy, chartboost, mopub, ironsrc, tiktok, Mintegral, tencentAds, to ensure maximum revenue

- Featured smart ad inventory and automatic waterfall optimization technology to ensure highest ad loading performance and fill rate of 99%+ (* with proper Waterfall level configuration), with historical data driven realtime optimization capacity
- Header bidding in compliance with IAB specifications is supported to maximize revenue through realtime bidding. OpenMediation has built-in support for Facebook bidding. Its SDK auction mechanism brings flexibility and convenience by eliminating the need for an auction server. The Auction process works perfectly together with traditional waterfall. Before the waterfall starts, the auction returns a bid winner from Facebook and other AdNetworks that support header bidding. The waterfall winner, coming out of the waterfall process that is largely based on historical data, is compared with the bid winner to eventually determine the final winner.
- Docker container images and deployment automation on popular public cloud such as AWS ECS/EKS, combined with S3 + Athena lightweight data analytics solutions, makes running a powerful advertising mediation system easy

The OpenMediation project includes three parts: server, dashboard, and SDK. It is divided into seven sub-projects, as follows:

- [OM-Server](https://github.com/AdTiming/OM-Server): Mediation server core module, responsible for SDK access and mediation logic processing, data collection processing

- [OM-ADC](https://github.com/AdTiming/OM-ADC): Data aggregation module, responsible for aggregating revenue data from AdNetworks for business reports generation

- [OM-DTask](https://github.com/AdTiming/OM-Dtask): Data configuration center, which stores key configuration information for OM-Server, such as kafka, S3, etc. Also includes data processing code for AWS Athena based data analytics and report generation

- [OM-Android-SDK](https://github.com/AdTiming/OpenMediation-Android): Android Mediation SDK, responsible for mediating third-party AdNetwork Android SDKs

- [OM-iOS-SDK](https://github.com/AdTiming/OpenMediation-iOS): iOS Mediation SDK, responsible for mediating third-party AdNetwork iOS SDKs

- [OM-Dashboard-UI](https://github.com/AdTiming/OM-Dashboard-UI): Dashboard frontend

- [OM-Dashboard-Server](https://github.com/AdTiming/OM-Dashboard-Server): Dashboard backend

## Docker images on docker hub

Pre-built docker images can be pulled from docker hub:
- OM-Server: `docker pull adtiming/omserver`
- OM-Adc: `docker pull adtiming/omadc`
- OM-Dtask: `docker pull adtiming/omdtask`
- OM-Dashboard-UI: `docker pull adtiming/omnginx`
- OM-Dashboard-Server: `docker pull adtiming/omdsserver`

Check each container's log output like this:

    docker exec -it $(docker ps | grep omserver | awk '{print $1}' ) tail -f /om-server/log/stdout.log

## DB init

Run [DB init script](https://github.com/AdTiming/OpenMediation/blob/master/om-init.sql.gz) after creating your database.

## AWS S3 and Athena 

AWS S3 and Athena has been used in this project for data storage and analytics. If you choose to use them, the S3 bucket info needs to be stored in your database: 

    update om_server_dcenter set s3_status=1,s3_region='{region}',s3_bucket='{bucket}';

Besides, an IAM role with proper S3 and Athena access needs to be created and assigned to your EC2 instance or container Task where your code resides.

## Deployment verification

- omdtask

    `curl 'http://omdtask-ip:19012/snode/config/get?id=1&dcenter=1'`
    gives a valid response.
- omserver

    `curl "http://omserver-ip:19011"`  gives a `om-server` response. omserver verified.

    `curl "http://domain"` gives a `om-server` response. nginx 80 verified.
   
    `curl "https://domain"`  gives a `om-server` response. nginx 443 verified.
 - omadc

    `curl "http://omadc-ip:19014"`  gives a `om-adc` response. omadc verified.

 - Dashboard UI & omdsserver
 
   omnginx domain can be successfully visited.

## Communication

- If you **found a bug**, _and can provide steps to reliably reproduce it_, open an issue.
- If you **have a feature request**, open an issue.


# OpenMediation

OpenMediation is a fully open mediation platform, providing an end-to-end system from SDK to server, Dashboard, and datacentre. OpenMediation's full-featured and full-platform access provides a highly competitive mobile advertising mediation solution:

- Comprehensive support for more than 10 major AdNetwork, including admob, Facebook, applovin, unity, vungle, adcolony, tapjoy, chartboost, mopub, ironsrc, tiktok, Mintegral, tencentAds, to ensure maximum revenue

- Featured smart ad inventory and automatic waterfall optimization technology to ensure highest ad loading performance and fill rate of 99%+ (* with proper Waterfall level configuration), with historical data driven realtime optimization capacity
- Supports IAB specifications complied headerbidding to maximize revenue through real-time bidding
- Docker container images and deployment automation on popular public cloud such as AWS ECS/EKS, combined with S3 + Athena lightweight data analytics solutions, makes running a powerful advertising mediation system easy

The OpenMediation project includes three parts: server, dashboard, and SDK. It is divided into seven sub-projects, as follows:

- [OM-Server](https://github.com/AdTiming/OM-Server): Mediation server core module, responsible for SDK access and mediation logic processing, data collection processing

- [OM-ADC](https://github.com/AdTiming/OM-ADC): Data aggregation module, responsible for aggregating revenue data from AdNetworks for business reports generation

- [OM-DTask](https://github.com/AdTiming/OM-Dtask): Data configuration center, which stores key configuration information for OM-Server, such as kafka, S3, etc. Also includes data processing code for AWS Athena based data analytics and report generation

- [OM-Android-SDK](https://github.com/AdTiming/OpenMediation-Android): Android Mediation SDK, responsible for mediating third-party AdNetwork Android SDKs

- [OM-iOS-SDK](https://github.com/AdTiming/OpenMediation-iOS): iOS Mediation SDK, responsible for mediating third-party AdNetwork iOS SDKs

- OM-DS-UI: Dashboard frontend

- OM-DS-Server: Dashboard backend

## Communication

- If you **found a bug**, _and can provide steps to reliably reproduce it_, open an issue.
- If you **have a feature request**, open an issue.


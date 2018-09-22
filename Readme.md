[![Codacy Badge](https://api.codacy.com/project/badge/Grade/1d70638e495b40b4964efc84026298a3)](https://www.codacy.com/app/celiangarcia/firefly-docker-bases?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=celian-garcia/firefly-docker-bases&amp;utm_campaign=Badge_Grade) [![CircleCI](https://circleci.com/gh/celian-garcia/firefly-docker-bases/tree/master.svg?style=shield)](https://circleci.com/gh/celian-garcia/firefly-docker-bases/tree/master)

# Docker files of Firefly project

This repository contains docker files used by the Firefly project. <br>
Each `image/version` folder is automatically deployed if and only if there is a difference between **this folder** and **the same folder of the previous commit**.

These dockerfiles purpose is basically to reduce compile time during the deployment of each firefly component.

- [Summary](#summary)
- [Details](#details)
  - [firefly-api-base](#firefly-api-base)
  - [firefly-api-base-sonar](#firefly-api-base-sonar)
  - [firefly-database-base](#firefly-database-base)
  - [fly-base](#fly-base)
- [Changelog](#changelog)

# Summary

| Docker image  | Description |
| :------------ | :---------- |
| [celiangarcia/firefly-api-base](https://hub.docker.com/r/celiangarcia/firefly-api-base/) |              Dependencies of the [firefly-api](https://github.com/celian-garcia/firefly-api) c++ server|
| [celiangarcia/firefly-api-base-sonar](https://hub.docker.com/r/celiangarcia/firefly-api-base-sonar/) |  An extension of firefly-api-base, containing some tools which permits sonar to run. |
| [celiangarcia/firefly-database-base](https://hub.docker.com/r/celiangarcia/firefly-database-base/) |    Dependencies of [firefly-database](https://github.com/celian-garcia/firefly-database) PostgreSQL extension. |
| [celiangarcia/fly-base](https://hub.docker.com/r/celiangarcia/fly-base/) |                              Dependencies of [fly](https://github.com/celian-garcia/fly) c++ library.|

# Details

## firefly-api-base
#### What's installed
- gcc: `7`
- cmake: `3.9.0`
- boost : `v1.64.0`
- fly : `v0.3`
- postgresql : `9.6`
- gtest : `latest`
- opencv : `latest`
- nlohmann::json : `3.2.0`

#### Versions correspondance
| firefly-api-base version | firefly-api version |
| :----------------------- | :------------------ |
| 0.1  [<img src="https://github.com/celian-garcia/firefly-assets/blob/master/external/docker_logo_20.svg" width="20">](firefly-api-base/0.1/Dockerfile)  | until 0.6  	|
| 0.2  [<img src="https://github.com/celian-garcia/firefly-assets/blob/master/external/docker_logo_20.svg" width="20">](firefly-api-base/0.2/Dockerfile)  | 0.7   		|
| 0.3  [<img src="https://github.com/celian-garcia/firefly-assets/blob/master/external/docker_logo_20.svg" width="20">](firefly-api-base/0.3/Dockerfile)  | from 0.8   	|


## firefly-api-base-sonar
#### What's installed
- firefly-api-base: `latest`
- maven: `latest`
- build-wrapper-linux: `latest`

#### Versions correspondance
| firefly-api-base-sonar version | firefly-api version |
| :----------------------------- | :------------------ |
| 0.1  [<img src="https://github.com/celian-garcia/firefly-assets/blob/master/external/docker_logo_20.svg" width="20">](firefly-api-base-sonar/0.1/Dockerfile)  | until 0.6   	|
| 0.2  [<img src="https://github.com/celian-garcia/firefly-assets/blob/master/external/docker_logo_20.svg" width="20">](firefly-api-base-sonar/0.2/Dockerfile)  | 0.7    		|
| 0.3  [<img src="https://github.com/celian-garcia/firefly-assets/blob/master/external/docker_logo_20.svg" width="20">](firefly-api-base-sonar/0.3/Dockerfile)  | from 0.8    	|


## firefly-database-base
#### What's installed
- gcc: `7`
- cmake: `3.9.0`
- gtest : `latest`
- opencv : `latest`

#### Versions correspondance
| firefly-database-base version | firefly-database version |
| :---------------------------- | :----------------------- |
| 0.1  [<img src="https://github.com/celian-garcia/firefly-assets/blob/master/external/docker_logo_20.svg" width="20">](firefly-database-base/0.1/Dockerfile)  | until latest |

## fly-base
#### What's installed
- postgresql : `9.6`
- postgis :  `2.4`

#### Versions correspondance
| fly-base version | fly version |
| :--------------- | :---------- |
| 0.1  [<img src="https://github.com/celian-garcia/firefly-assets/blob/master/external/docker_logo_20.svg" width="20">](fly-base/0.1/Dockerfile)  | until latest |

# Changelog

### firefly-api-base
- 0.1 (initialization)
- 0.2
  - update fly version to 0.3
- 0.3
  - integrated nlohmann::json 3.2.0

### firefly-api-base-sonar
- 0.1 (initialization)
- 0.2
  - Use version 0.2 of firefly-api-base
- 0.3
  - Use version 0.3 of firefly-api-base

### firefly-database-base
- 0.1 (initialization)

### fly-base
- 0.1 (initialization)
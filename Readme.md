[![Codacy Badge](https://api.codacy.com/project/badge/Grade/1d70638e495b40b4964efc84026298a3)](https://www.codacy.com/app/celiangarcia/firefly-docker-bases?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=celian-garcia/firefly-docker-bases&amp;utm_campaign=Badge_Grade) [![CircleCI](https://circleci.com/gh/celian-garcia/firefly-docker-bases/tree/master.svg?style=shield)](https://circleci.com/gh/celian-garcia/firefly-docker-bases/tree/master)

# Docker files of Firefly project

This repository contains docker files used by the Firefly project. <br>
Each `image/version` folder is automatically deployed if and only if there is a difference between **this folder** and **the same folder of the previous commit**.

These dockerfiles purpose is basically to reduce compile time during the deployment of each firefly component.

## Docker Registry deployments

| Docker image  | Tag     | Description |
| :------------ | :------ | :---------- |
| [celiangarcia/firefly-api-base](https://hub.docker.com/r/celiangarcia/firefly-api-base/) | 0.1 | Dependencies of the [firefly-api](https://github.com/celian-garcia/firefly-api) c++ server. |
| [celiangarcia/firefly-api-base-sonar](https://hub.docker.com/r/celiangarcia/firefly-api-base-sonar/) | 0.1 | An extension of firefly-api-base, containing some tools which permits sonar to run. |
| [celiangarcia/firefly-database-base](https://hub.docker.com/r/celiangarcia/firefly-database-base/) | 0.1 | Dependencies of [firefly-database](https://github.com/celian-garcia/firefly-database) PostgreSQL extension. |
| [celiangarcia/fly-base](https://hub.docker.com/r/celiangarcia/fly-base/) | 0.1 | Dependencies of [fly](https://github.com/celian-garcia/fly) c++ library.|

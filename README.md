# Docker Based Local Server

Local server based in Nginx using Docker to facilitate the configuration of the development environment.

#### Dependencies

1. [Docker 1.11+](https://docs.docker.com/engine/installation/)
2. [Docker-compose 1.7+](https://docs.docker.com/compose/install/)

#### Starting the Environment

After installing Docker and Docker Compose, enter in the project root folder and execute the command bellow:

```sh
$ sudo docker-compose up -d --build
```

This command will download the Nginx docker image, build a new one with the environment configurations and run a new docker container using ports **80** and **443**.

#### Restarting the Environment

In the root folder of the project, execute the command bellow:

```sh
$ sudo docker-compose restart
```

#### Removing the Environment

In the root folder of the project, execute the command bellow:

```sh
$ sudo docker-compose down
```

#### Configuring your projects

Inside the root folder, there is a folder named **projects**. This folder is where you will put all you project folders.
After that, you need to create a new **server** block inside the files on the folder **confs**. You can you the examples inside the file. If you want an http project, use the file **http.conf**, if it's https, **https.conf**. 
After that, you need to restart the docker container.

```sh
$ sudo docker-compose restart
```
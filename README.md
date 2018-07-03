# redisson-docker
Docker container for Redisson Node

# Supported tags and respective `Dockerfile` links
-	[`3.7.3`, `latest`, `master`](https://github.com/redisson/redisson-docker/blob/master/Dockerfile)
-	[`3.7.3-ubuntu`, `latest-ubuntu`, `master-ubuntu`](https://github.com/redisson/redisson-docker/blob/master-ubuntu/Dockerfile)
-	[`2.12.3`](https://github.com/redisson/redisson-docker/blob/2.12.3/Dockerfile)
-	[`2.12.3-ubuntu`](https://github.com/redisson/redisson-docker/blob/2.12.3-ubuntu/Dockerfile)

# Image Variants

Redisson Node container has two variants:

## `redisson-node:<version>`

Default image. Based on OpenJDK 1.8 (for 3.x version) or OpenJDK 1.7 (for 2.x version) image.

## `redisson-node:<version>-ubuntu`

Based on Ubuntu 18.04 image with OpenJDK package.

# 1. How to run OpenJDK based container

## 1. Run with Redis

### Run Redis
    docker run -d --name redis-node redis

### Run Redisson Node
    docker run -d --network container:redis-node -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.7.3
with `JAVA_OPTS` parameters

    docker run -d --network container:redis-node -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.7.3

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)

## 2. Run with external Redis

### Run Redisson Node
    docker run -d -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.7.3
with `JAVA_OPTS` parameters

    docker run -d -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.7.3

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)


# 2. How to run Ubuntu based container

## 1. Run with Redis

### Run Redis
    docker run -d --name redis-node redis

### Run Redisson Node
    docker run -d --network container:redis-node -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.7.3-ubuntu
with `JAVA_OPTS` parameters

    docker run -d --network container:redis-node -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.7.3-ubuntu

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)

## 2. Run with external Redis

### Run Redisson Node
    docker run -d -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.7.3-ubuntu
with `JAVA_OPTS` parameters

    docker run -d -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.7.3-ubuntu

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)

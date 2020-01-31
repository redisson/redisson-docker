# redisson-docker
Docker container for Redisson Node

# Supported tags and respective `Dockerfile` links
-	[`3.12.1`, `latest`, `master`](https://github.com/redisson/redisson-docker/blob/master/Dockerfile)
-	[`3.12.1-ubuntu`, `latest-ubuntu`, `master-ubuntu`](https://github.com/redisson/redisson-docker/blob/master-ubuntu/Dockerfile)

# What is Redisson?

Redisson is Redis Java client and In-Memory Data Grid. It provides [Distributed objects](https://github.com/redisson/redisson/wiki/6.-Distributed-objects), [Distributed collections](https://github.com/redisson/redisson/wiki/7.-Distributed-collections), [Distributed locks and synchronizers](https://github.com/redisson/redisson/wiki/8.-Distributed-locks-and-synchronizers), [Distributed services](https://github.com/redisson/redisson/wiki/9.-distributed-services), [Spring Framework](https://github.com/redisson/redisson/wiki/14.-Integration%20with%20frameworks#141-spring-framework) integration, [Spring Cache](https://github.com/redisson/redisson/wiki/14.-Integration%20with%20frameworks/#142-spring-cache) implementation, [Spring Transaction API](https://github.com/redisson/redisson/wiki/14.-Integration-with-frameworks/#147-spring-transaction-manager) implementation, [Spring Data Redis](https://github.com/redisson/redisson/wiki/14.-Integration-with-frameworks/#148-spring-data-redis) integration, [Spring Boot Starter](https://github.com/redisson/redisson/wiki/14.-Integration-with-frameworks/#149-spring-boot-starter) implementation, [Transaction API](https://github.com/redisson/redisson/wiki/10.-Additional-features#104-transactions), [Tomcat Session Manager](https://github.com/redisson/redisson/wiki/14.-Integration%20with%20frameworks#145-tomcat-redis-session-manager) implementation, [Spring Session](https://github.com/redisson/redisson/wiki/14.-Integration%20with%20frameworks/#146-spring-session) implementation

# Image Variants

Redisson Node container has two variants:

## `redisson-node:<version>`

Default image. Based on OpenJDK 1.8 image

## `redisson-node:<version>-ubuntu`

Based on Ubuntu 18.04 image with OpenJDK package.

# 1. How to run OpenJDK based container

## 1. Run with Redis

### Run Redis
    docker run -d --name redis-node redis

### Run Redisson Node
    docker run -d --network container:redis-node -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.12.1
with `JAVA_OPTS` parameters

    docker run -d --network container:redis-node -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.12.1

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)

## 2. Run with external Redis

### Run Redisson Node
    docker run -d -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.12.1
with `JAVA_OPTS` parameters

    docker run -d -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.12.1

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)


# 2. How to run Ubuntu based container

## 1. Run with Redis

### Run Redis
    docker run -d --name redis-node redis

### Run Redisson Node
    docker run -d --network container:redis-node -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.12.1-ubuntu
with `JAVA_OPTS` parameters

    docker run -d --network container:redis-node -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.12.1-ubuntu

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)

## 2. Run with external Redis

### Run Redisson Node
    docker run -d -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.12.1-ubuntu
with `JAVA_OPTS` parameters

    docker run -d -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:3.12.1-ubuntu

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)

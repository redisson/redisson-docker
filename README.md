# redisson-docker
Docker container for Redisson Node based on Ubuntu Server 14.04
# How to use

### Run Redis
    docker run -d --name redis-node redis
### Run Redisson Node
    docker run -d --network container:redis-node -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:2.4.0-ubuntu
with `JAVA_OPTS` parameters

    docker run -d --network container:redis-node -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:2.4.0-ubuntu

`<path-to-config>` - path to Redisson Node [config](https://github.com/redisson/redisson/wiki/12.-Standalone-node#122-configuration)

# redisson-docker
Docker container for Redisson Node based on Ubuntu Server 14.04
# How to use

### Run Redis
    docker run -d --name redis-node redis
### Run Redisson Node
    docker run -d --network container:redis-node -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node:2.4.0-ubuntu

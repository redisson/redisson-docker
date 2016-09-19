# redisson-docker
Docker container for Redisson Node
# How to use

### Run Redis
    docker run -d --name redis-node redis
### Run Redisson node
    docker run -d --network container:redis-node -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node

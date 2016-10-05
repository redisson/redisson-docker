# redisson-docker
Docker container for Redisson Node
# How to use

### Run Redis
    docker run -d --name redis-node redis
### Run Redisson Node
    docker run -d --network container:redis-node -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node

with `JAVA_OPTS` parameters

    docker run -d --network container:redis-node -e JAVA_OPTS="-Xmx1g" -v <path-to-config>:/opt/redisson-node/redisson.conf redisson/redisson-node

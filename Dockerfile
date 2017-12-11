FROM openjdk:8

ENV REDISSON_VERSION 3.6.6
ENV REDISSON_HOME /opt/redisson-node

WORKDIR $REDISSON_HOME

ADD http://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=org.redisson&a=redisson-all&v=$REDISSON_VERSION&e=jar $REDISSON_HOME/redisson-all-$REDISSON_VERSION.jar

CMD java -server $JAVA_OPTS -jar redisson-all-$REDISSON_VERSION.jar redisson.conf

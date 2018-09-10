FROM ubuntu:18.04

ENV REDISSON_VERSION 2.13.0
ENV REDISSON_HOME /opt/redisson-node

WORKDIR $REDISSON_HOME

RUN apt-get update && apt-get install -y software-properties-common

ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

RUN add-apt-repository ppa:openjdk-r/ppa

RUN apt-get update && apt-get install -y openjdk-7-jdk

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/

ADD http://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=org.redisson&a=redisson-all&v=$REDISSON_VERSION&e=jar $REDISSON_HOME/redisson-all-$REDISSON_VERSION.jar

CMD java -server $JAVA_OPTS -jar redisson-all-$REDISSON_VERSION.jar redisson.conf
FROM ubuntu:14.04

ENV REDISSON_VERSION 2.3.0
ENV REDISSON_HOME /opt/redisson-node

WORKDIR $REDISSON_HOME

RUN apt-get update && \ 
    apt-get install -y software-properties-common && \ 
    add-apt-repository ppa:webupd8team/java -y && \ 
    apt-get update

RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \ 
    apt-get install -y oracle-java7-installer

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk7-installer 

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle/

ADD http://repository.sonatype.org/service/local/artifact/maven/redirect?r=central-proxy&g=org.redisson&a=redisson-all&v=$REDISSON_VERSION&e=jar $REDISSON_HOME/redisson-all-$REDISSON_VERSION.jar

CMD java -server $JAVA_OPTS -jar redisson-all-$REDISSON_VERSION.jar redisson.conf

#This is a docker file
FROM ubuntu:15.04
MAINTAINER Alvin Chiu <alvinchiu@gmail.com>
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN (curl -L -k -b "oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u45-b14/server-jre-8u45-linux-x64.tar.gz | gunzip -c | tar x) \
 && mv /jdk1.8.0_45 /jdk

ENV JAVA_HOME /jdk
ENV JRE_HOME  $JAVA_HOME/jre
ENV PATH $PATH:$JAVA_HOME/bin

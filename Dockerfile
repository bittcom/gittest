#basic images
FROM ubuntu:18.04

#mainter
LABEL MAINTAINER chenly@sdc.icbc.com.cn

#make dir
RUN  mkdir -p /opt/openjdk8
RUN  mkdir -p /approot

#copy app files
COPY ./openjdk-8u41-ri /opt/openjdk8
COPY ./demo-0.0.1-SNAPSHOT.jar /approot

#set env variable
ENV JAVA_HOME=/opt/openjdk8
ENV PATH $PATH:$JAVA_HOME/bin

#start app
WORKDIR /approot
CMD ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]

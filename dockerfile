FROM centos:7.9.2009
MAINTAINER "Prasad"
RUN touch /opt/file123
RUN mkdir /opt/dir123
RUN yum install git -y
RUN git config --global user.name "Prasad"
RUN git config --global user.email "prasad@gmail.com"
RUN cd /opt && git clone https://github.com/polarapu/batch92.git
RUN yum install java -y
RUN yum install maven -y
#COPY dockerfile /opt
#COPY d1/f1 /opt
#ENV export JAVA_HOME=/path
EXPOSE 84
ADD d1 /opt
run yum install wget -y
RUN cd /opt && wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.8/bin/apache-tomcat-10.1.8.tar.gz --no-check-certificate
RUN cd /opt && tar -xvf apache-tomcat-10.1.8.tar.gz
COPY tomcat-users.xml /opt/apache-tomcat-10.1.8/conf
#ENTRYPOINT cat /opt/apache-tomcat-10.1.8/conf/tomcat-users.xml
#CMD sleep 20
ENTRYPOINT sleep 20

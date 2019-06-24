FROM tomcat:8.0
MAINTAINER Shifali Srivastava "shifalisrivastava4343@gmail.com"
#COPY target/myweb-0.0.5.war /newdir.war
COPY target/myweb-0.0.5.war /usr/local/tomcat/webapps/
RUN echo "Hello world"
#  RUN apt-get update

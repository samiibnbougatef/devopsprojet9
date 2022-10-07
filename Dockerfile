FROM tomcat:latest
MAINTAINER samiibnbougatef
RUN cp -R  /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

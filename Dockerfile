# Pull base image 
From tomcat:8-jre8 
ADD /target/webapp.war /usr/local/tomcat/webapps/
#COPY /target/webapp.war /usr/local/tomcat/webapps
RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

# Pull base image 
From tomcat:8

#ADD /webapp/target/webapp.war /usr/local/tomcat/webapps/

COPY /webapp/target/webapp.war /usr/local/tomcat/webapps

RUN cp -R /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps

EXPOSE 8081

CMD ["catalina.sh","run"]

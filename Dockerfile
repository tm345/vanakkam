# Pull base image 
From tomcat:8

ADD /webapp/target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8081

CMD ["catalina.sh","run"]

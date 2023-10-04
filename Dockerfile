FROM tomcat
#COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
#COPY target/live*.war /usr/local/tomcat/webapps/live.war
#EXPOSE 80
#CMD ["catalina.sh", "run"]


#FROM tomcat:latest

COPY /var/lib/jenkins/workspace/cakezone/target/live*.war /usr/local/tomcat/webapps/live.war

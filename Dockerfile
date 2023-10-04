FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 80
CMD ["catalina.sh", "run"]


#FROM tomcat:latest

#COPY /var/lib/jenkins/workspace/cakezone/target/*.war /usr/local/tomcat/webapps/ROOT.war

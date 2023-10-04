#FROM tomcat
#COPY target/*.war /usr/local/tomcat/webapps/ROOT.war


FROM tomcat:latest

COPY /var/lib/jenkins/workspace/cakezone/target/*.war /usr/local/tomcat/webapps/ROOT.war

#FROM tomcat
#COPY target/*.war /usr/local/tomcat/webapps/ROOT.war


FROM tomcat:latest

WORKDIR /usr/local/tomcat/webapps

COPY /var/lib/jenkins/workspace/cakezone/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 3000

CMD ["catalina.sh", "run"]

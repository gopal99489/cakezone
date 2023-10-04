FROM tomcat
#COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
COPY target/*.war /var/lib/tomcat9/webapps/ROOT.war
#EXPOSE 80
#CMD ["catalina.sh", "run"]


#FROM tomcat:latest

#COPY /var/lib/jenkins/.m2/repository/vamsi/maven/com/vamsi/0.0.1-SNAPSHOT/*.war /usr/local/tomcat/webapps/ROOT.war

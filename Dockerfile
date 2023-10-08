#FROM tomcat
#COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
#COPY target/*.war /var/lib/tomcat9/webapps
#EXPOSE 3000
#CMD ["catalina.sh", "run"]


#FROM tomcat:latest

#COPY /var/lib/jenkins/.m2/repository/vamsi/maven/com/vamsi/0.0.1-SNAPSHOT/*.war /usr/local/tomcat/webapps/ROOT.war
# Use the official Tomcat image as the base image
FROM tomcat:9.0-jdk11-openjdk-slim

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file built by Maven into the container at the Tomcat webapps directory
COPY target/*.war ./ROOT.war

# Expose port 3000 instead of 8080
EXPOSE 3000

# Start Tomcat with port 3000 when the container starts
CMD ["catalina.sh", "run", "-Dcatalina.http.port=3000"]

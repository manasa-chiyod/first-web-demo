# Use the official Tomcat image from Docker Hub
FROM tomcat:9.0

# Remove the default web apps
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the WAR file from your Maven target directory into Tomcat's webapps
COPY target/web-app-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8081

# Start Tomcat (default in base image)

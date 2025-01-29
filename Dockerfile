# Use a Tomcat base image
FROM tomcat:9.0-jdk17-slim

# Copy your .war file into the webapps directory of Tomcat
COPY target/your-app.war /usr/local/tomcat/webapps/your-app.war

# Expose the port on which the app will be available
EXPOSE 8080

# Start Tomcat when the container is run
CMD ["catalina.sh", "run"]


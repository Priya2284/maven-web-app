FROM tomcat:latest
MAINTAINER Ashok <ashok@oracle.coms>
EXPOSE 8080
COPY target/maven-web-app.war /usr/local/tomcat/webapps/maven-web-app.war
# Use Tomcat 9 (stable for Java web apps with javax.* APIs)
#FROM tomcat:9.0-jdk11

# Remove default ROOT app (Tomcat welcome page)
#RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR as ROOT.war so it deploys at "/"
#COPY target/maven-web-app.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
#EXPOSE 8080

# Start Tomcat
#CMD ["catalina.sh", "run"]

FROM tomcat:10-jdk21

WORKDIR /usr/local/tomcat/webapps

COPY target/*.war ROOT.war

EXPOSE 8080

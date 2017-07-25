FROM tomcat:8.0-jre8

# Deploy application
ADD target/training-java-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

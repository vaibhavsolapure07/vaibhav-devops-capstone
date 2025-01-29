FROM openjdk:17-slim
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.98/bin/apache-tomcat-9.0.98.tar.gz && \
    tar xzf apache-tomcat-9.0.98.tar.gz && \
    mv apache-tomcat-9.0.98 /usr/local/tomcat
WORKDIR /usr/local/tomcat
EXPOSE 8080
CMD ["bin/catalina.sh", "run"]


FROM openjdk:17
COPY target/dremio-rest-server-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","--add-opens=java.base/java.nio=ALL-UNNAMED","-jar","/app.jar"]
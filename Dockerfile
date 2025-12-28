FROM eclipse-temurin:17-jre

WORKDIR /app

ARG JAR_FILE=target/gateway-server-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app/gateway-server.jar

EXPOSE 8888

ENTRYPOINT ["java", "-jar", "/app/gateway-server.jar"]


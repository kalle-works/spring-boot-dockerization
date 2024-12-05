# Use a Gradle image for building
FROM gradle:8.3-jdk17 AS builder
WORKDIR /app
COPY . .
RUN gradle build --no-daemon

# Use a smaller image for running the application
FROM openjdk:17-jdk-slim
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar
COPY --from=builder /app/${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
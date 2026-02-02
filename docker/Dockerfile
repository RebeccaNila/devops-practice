# Use OpenJDK 22 as base image
FROM eclipse-temurin:21-jre
LABEL authors="nila"
# Copy the JAR file from target directory to container
COPY ../target/devops-practice.jar /tmp/devops-practice.jar
# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/tmp/devops-practice.jar"]
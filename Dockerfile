# Use OpenJDK 22 as base image
FROM openjdk:22-jdk
LABEL authors="nila"
# Copy the JAR file from target directory to container
COPY target/student-app.jar /tmp/student-app.jar
# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/tmp/student-app.jar"]
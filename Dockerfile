# Use official OpenJDK 17 slim base image
FROM openjdk:17-jdk-slim

# Set working directory inside the container (optional but good practice)
WORKDIR /app

# Copy the fat JAR built by Gradle into the container
COPY build/libs/jaaavaa-app-all.jar app.jar

# Run the jar file when the container starts
ENTRYPOINT ["java", "-jar", "/app/app.jar"]


# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file from the target directory
COPY target/dockerex1-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8091

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

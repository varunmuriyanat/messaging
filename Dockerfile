# Use a lightweight Java image
FROM eclipse-temurin:17-jdk-alpine

# Set a working directory
WORKDIR /app

# Copy the Spring Boot JAR into the image
COPY target/messaging-0.0.1-SNAPSHOT.jar app.jar

# Expose the port Spring Boot runs on
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]






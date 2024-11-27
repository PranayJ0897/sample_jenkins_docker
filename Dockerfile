# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/sampleJenkinsDockerExample-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port (replace 8080 with your app's port)
EXPOSE 8080

# Specify the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

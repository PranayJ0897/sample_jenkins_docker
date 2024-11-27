# Stage 1: Build the application
FROM maven:3.9.4-eclipse-temurin-17 AS build

# Set the working directory for the build stage
WORKDIR /app

# Copy the project files into the container
COPY pom.xml .
COPY src ./src

# Run Maven to build the application
RUN mvn clean install -DskipTests

# Stage 2: Create the runtime image
FROM openjdk:17-jdk-slim

# Set the working directory for the runtime stage
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/target/sampleJenkinsDockerExample-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Specify the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

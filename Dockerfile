# Using a Java base image.
FROM openjdk:11-jre-slim

# Setting the working directory inside the container
WORKDIR /app

# Copying the .class files and the external library needed
COPY bin /app/bin
COPY gson-2.10.1.jar /app

# Exposes the port that the server uses
EXPOSE 12345

# Sets the working directory where the .class files are located
WORKDIR /app/bin

# Command to run the server
CMD ["java", "-cp", ".:/app/gson-2.10.1.jar", "edu.ncsu.pacman.network.Server"]

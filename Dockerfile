# Use an official OpenJDK image as the base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the source code (adjust if needed for Maven structure)
COPY src/main/java/HelloWorld.java /app/

# Compile the Java application
RUN javac HelloWorld.java

# Define the command to run the application
CMD ["java", "HelloWorld"]


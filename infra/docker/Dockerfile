# Use an official runtime as a parent image (e.g., node:22-alpine, python:3.9-slim)
FROM eclipse-temurin:8u482-b08-jre-ubi10-minimal

# Set the working directory in the container
WORKDIR /app

# Copy application files from the host to the container
COPY . .

# Install dependencies or run any necessary commands
#RUN <command_to_install_dependencies>

# Expose the port your app runs on (optional but recommended for clarity)
EXPOSE 8080
EXPOSE 5432

# Define the command to run the application when the container starts
CMD ["./java -jar app.jar"]

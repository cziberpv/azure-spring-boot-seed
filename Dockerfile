# Use the official OpenJDK image from the Docker Hub
# https://hub.docker.com/_/eclipse-temurin/tags
FROM eclipse-temurin:21.0.4_7-jre-ubi9-minimal

# Run a simple command to print "Hello World" to the console
CMD ["echo", "Hello World"]

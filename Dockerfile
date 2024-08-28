# Use a lightweight OpenJDK image as the base
FROM eclipse-temurin:21-jdk-alpine

# Set the working directory in the container
WORKDIR /minecraft

# Copy the Paper server jar into the container
COPY . .

# Accept the EULA
RUN echo "eula=true" > eula.txt

# Expose the Minecraft server port
EXPOSE 25565

# Set the default command to run the Minecraft server
CMD ["java", "-Xmx4G", "-jar", "paper-1.21-130.jar", "--nogui"]
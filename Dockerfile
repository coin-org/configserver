FROM java:8

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8081

# The application's jar file
ARG JAR_FILE=./target/configserver-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} configserver.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/configserver.jar"]
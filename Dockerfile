
# Use OpenJDK base image
FROM openjdk:17-alpine

# Install Maven using apk
RUN apk update && apk add maven

# Set the working directory inside the container
WORKDIR /app

# Copy your project files into the container
COPY . .

# Run Maven to build the project
RUN mvn clean package

CMD ["java", "-jar", "target/myapp.jar"]


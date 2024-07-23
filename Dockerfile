#
# Build stage
#
FROM maven:3.9.8-amazoncorretto-21-debian AS build

WORKDIR /src
COPY [".", "."]
RUN mvn clean package

#
# Package stage
#
FROM eclipse-temurin:21.0.4_7-jre-ubi9-minimal

WORKDIR /app
COPY --from=build /src/placeholder-release/target/docker-assembly-dist lib/
EXPOSE 8080
ENTRYPOINT ["java", "-cp", "./lib/*", "placeholder_package.ApplicationKt"]

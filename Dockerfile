FROM openjdk:17-jdk-slim AS build

WORKDIR /app

COPY pom.xml ./

COPY . .

RUN ./mvnw clean package -DskipTests

FROM openjdk:17-slim

WORKDIR /app

COPY --from=build /app/target/*.jar springboot-image-new.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springboot-image-new.jar"]
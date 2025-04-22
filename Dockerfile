FROM openjdk:17
WORKDIR /app
COPY --from=build /app/target/springboot-image-new.jar springboot-image-new.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "springboot-image-new.jar"]

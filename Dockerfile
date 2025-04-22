FROM openjdk:17
EXPOSE 8080
COPY --from=build /app/target/*.jar springboot-image-new.jar
ENTRYPOINT ["java","-jar","/springboot-image-new.jar"]

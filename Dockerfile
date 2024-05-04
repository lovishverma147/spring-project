FROM openjdk:17
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17
COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar demo.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "demo.jar"]
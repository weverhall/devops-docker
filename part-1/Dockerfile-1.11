FROM amazoncorretto:8

EXPOSE 8080

WORKDIR /app

COPY ./material-applications/spring-example-project/mvnw ./mvnw

COPY ./material-applications/spring-example-project .

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
FROM alpine:3.14
EXPOSE 8080
ADD target/javamaven.jar javamaven.jar
ENTRYPOINT ["java","-jar","/javamaven.jar"]
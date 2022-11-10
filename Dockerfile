FROM openjdk:8
EXPOSE 8080
ADD target/javamaven.jar javamaven.jar
ENTRYPOINT ["java","-jar","/javamaven.jar"]
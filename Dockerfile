FROM alpine:3.14
EXPOSE 8080
ADD target/docker-direct-push.jar docker-direct-push.jar
ENTRYPOINT ["java","-jar","/docker-direct-push.jar"]
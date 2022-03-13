FROM openjdk:8-jre-alpine3.9

COPY /build/libs/hello-world-0.1.0.jar /

WORKDIR /

CMD ["java", "-cp", "hello-world-0.1.0.jar", "hello.HelloWorld"]

FROM openjdk:8-jre-alpine3.9

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz

COPY /build/libs/hello-world-0.1.0.jar /

WORKDIR /

CMD ["java", "-cp", "hello-world-0.1.0.jar", "hello.HelloWorld"]

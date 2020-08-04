FROM maven:3-openjdk-11
LABEL description "Ambiente para construção de aplicações java / maven"
RUN mkdir /app
RUN mkdir /.m2
WORKDIR /app
VOLUME /app /.m2
ENTRYPOINT /bin/sh

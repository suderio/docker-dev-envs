FROM maven:ibmjava
LABEL description "Ambiente para construção de aplicações ibmjava / maven"
RUN mkdir /app
RUN mkdir /.m2
WORKDIR /app
VOLUME /app /.m2
ENTRYPOINT /bin/sh

FROM maven:ibmjava

RUN mkdir /app
RUN mkdir /.m2
WORKDIR /app
VOLUME /app /.m2
COPY ./entrypoint.sh /bin/entrypoint.sh
ENTRYPOINT /bin/entrypoint.sh

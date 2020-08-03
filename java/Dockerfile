FROM maven:ibmjava

RUN mkdir /app
WORKDIR /app
VOLUME /app
#RUN addgroup --gid 1000 dev && \
#    adduser --disabled-password --gecos "" --force-badname --gid 1000 dev

USER dev
RUN mkdir -p /home/dev/.m2
VOLUME /home/dev/.m2

ENTRYPOINT "/bin/sh"

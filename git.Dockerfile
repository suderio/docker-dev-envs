FROM alpine/git
LABEL description "Ambiente git para desenvolvimento"
RUN mkdir /app
WORKDIR /app
VOLUME /app 
ENTRYPOINT /bin/sh

FROM bash:5
LABEL description "Ambiente cli para desenvolvimento"
RUN mkdir /app
WORKDIR /app
VOLUME /app
RUN apk add --no-cache vim
ENTRYPOINT /bin/sh

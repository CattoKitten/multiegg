# ----------------------------------
# Lumine's Lavalink Docker Image
# Environment: Java
# Minimum Panel Version: 1.x.x (Might be 2.x.x)
# ----------------------------------

FROM alpine:3.14

MAINTAINER Lumine, <lumine@notyourfriend.xyz>

RUN apk add wget curl git ca-certificates tar bash sqlite gnupg \
    && adduser --disabled-password --home /home/container container

RUN curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh \
    && jabba install adopt-openj9@1.16-0

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]

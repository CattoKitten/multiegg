FROM debian:stable-slim

MAINTAINER Lumine, <lumine@notyourfriend.xyz>

RUN apt update \
    && apt install wget curl git ca-certificates tar bash sqlite3 gnupg sudo apt-utils -y \
    && adduser --disabled-password --home /home/container container

RUN curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && sudo apt-get install -y nodejs

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]

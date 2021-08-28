# ----------------------------------
# Lumine's Elixir Docker Image
# Environment: Elixir/Erlang
# Minimum Panel Version: 1.x.x (Might be 2.x.x)
# ----------------------------------

FROM alpine:latest

MAINTAINER Lumine, <lumine@notyourfriend.xyz>


RUN apk add wget curl git ca-certificates tar bash sqlite gnupg \
    && adduser --disabled-password --home /home/container container

RUN apk add elixir

RUN mix local.hex \
    && wget https://github.com/phoenixframework/archives/raw/master/phx_new.ez \
    && mix archive.install --force ./phx_new.ez

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
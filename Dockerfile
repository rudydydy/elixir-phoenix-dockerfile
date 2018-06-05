FROM elixir:1.6-alpine

LABEL maintainer="Rudy Pangestu <phang.rudy94@gmail.com>"

RUN apk update \
    && apk add --no-cache --update \
    nodejs \
    make \
    g++ \
    erlang-dev \
    inotify-tools \
    && rm -rf /var/cache/apk/* \
    && mix local.hex --force \
    && mix local.rebar --force \
    && mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez --force

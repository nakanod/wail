FROM elixir:1.5.1-alpine

EXPOSE 4000
WORKDIR /wail
ENV PHOENIX_VERSION 1.3.0

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new-${PHOENIX_VERSION}.ez

COPY ./mix.exs /wail
COPY ./mix.lock /wail
RUN mix deps.get --force

COPY ./config /wail/config
COPY ./lib /wail/lib
COPY ./priv /wail/priv
COPY ./test /wail/test
RUN mix deps.compile --force

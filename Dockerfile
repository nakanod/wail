FROM elixir:1.5.1-alpine

ENV PHOENIX_VERSION 1.3.0
EXPOSE 4000

WORKDIR /wail

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new-${PHOENIX_VERSION}.ez

COPY . /wail

RUN mix deps.get --force
RUN mix deps.compile --force

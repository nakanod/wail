# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :wail,
  ecto_repos: [Wail.Repo]

# Configures the endpoint
config :wail, WailWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PZf+aNFwNd/lVU5AdnJokaGfko6Mj6BBv7LN2jEWjoRsAHsfHTCfVhmDXZq4nUaW",
  render_errors: [view: WailWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Wail.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

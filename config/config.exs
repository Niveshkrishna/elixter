# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixter,
  ecto_repos: [Elixter.Repo]

# Configures the endpoint
config :elixter, ElixterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LyscMf36GN5agDdCvBkSOBKHzZ0gWOSqx1g1L3k5HD/X8ZkvOjrqDUv/4v13FZB9",
  render_errors: [view: ElixterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Elixter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :super_simple, SuperSimple.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "j/9/AUBJpJCSNumsJmGOmINM4MATxHUnzup5LUnVfgCoWxIcdL5PFLdFu4aIoQSO",
  render_errors: [view: SuperSimple.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SuperSimple.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :super_simple, :special_variable, "${SPECIAL_VARIABLE}"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

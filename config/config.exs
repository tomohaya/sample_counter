# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :sample_counter, SampleCounterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "farWfYsBLfCiHwYNn99utEWChbIcbhRsxQA3aPgiCbsm7sQ/hY6lGYcL1W/1jusM",
  render_errors: [view: SampleCounterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SampleCounter.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "eMdmSLyK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

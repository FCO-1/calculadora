import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :calculadora, Calculadora.Repo,
  username: System.get_env("PSQL_USERNAME"),
  password: System.get_env("PSQL_PASSWORD"),
  hostname: System.get_env("PSQL_HOSTNAME"),
  database: "#{System.get_env("PSQL_DATABASE")}_dev",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :calculadora, CalculadoraWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "yI/Of6fdGCaMlAQ5qlgfTOCCq2w+9ExTLCHwo8MpEC/Pi76HnNHtWiO57XFJKA2G",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

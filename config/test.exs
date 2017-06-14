use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :teacher, Teacher.Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :teacher, Teacher.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DBUSER"),
  password: System.get_env("DBPASSWORD"),
  database: "teacher_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

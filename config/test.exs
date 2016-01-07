use Mix.Config

config :funix_test_tutorial,
  debug_errors: true,
  render_errors: ErrorViewHelper,
  app_namespace: FunixTestTutorialTest

config :funix_test_tutorial, FunixTestTutorial.Endpoint,
           url: [host: "toto.com", path: "/"],
           static_url: [host: "static.example.com"],
           server: false,
           http: [port: 80],
           https: [port: 443],
           force_ssl: [subdomains: true],
           cache_static_manifest: "",
           secret_key_base: "kjoy3o1zeidquwy1398juxzldjlksahdk3",
           pubsub: [adapter: Phoenix.PubSub.PG2, name: :endpoint_pub]
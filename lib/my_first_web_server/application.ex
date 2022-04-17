defmodule MyFirstWebServer.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: MyFirstWebServer.WebServer, options: [port: 4000]},
      {Plug.Cowboy, scheme: :http, plug: MyFirstWebServer.WebServer2, options: [port: 4001]}
    ]

    opts = [strategy: :one_for_one, name: MyFirstWebServer.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

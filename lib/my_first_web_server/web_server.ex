defmodule MyFirstWebServer.WebServer do
  import Plug.Conn

  def init(options ) do
    IO.inspect("Plug init...")
    options
  end

  def call(conn, _opts) do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello World")
  end
end

# {:ok, _pif} = Plug.Cowboy.http(MyFirstWebServer.WebServer, {})
# Plug.Cowboy.shutdown(MyFirstWebServer.WebServer.HTTP)

defmodule MyFirstWebServer.WebServer2 do
  use Plug.Router

  plug(Plug.Logger)
  plug(:match)
  plug(:dispatch)

  get "/hello" do
    send_resp(conn, 200, "world")
  end

  get "/hello2" do
    send_resp(conn, 200, "world2")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end

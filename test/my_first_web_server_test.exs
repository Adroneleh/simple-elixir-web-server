defmodule MyFirstWebServerTest do
  use ExUnit.Case
  doctest MyFirstWebServer

  test "greets the world" do
    assert MyFirstWebServer.hello() == :world
  end
end

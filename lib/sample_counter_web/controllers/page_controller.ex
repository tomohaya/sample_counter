defmodule SampleCounterWeb.PageController do
  use SampleCounterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

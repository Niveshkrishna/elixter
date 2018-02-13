defmodule ElixterWeb.PageController do
  use ElixterWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

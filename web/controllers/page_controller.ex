defmodule SuperSimple.PageController do
  use SuperSimple.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def up(conn, _params) do
    text conn, "ok"
  end
end

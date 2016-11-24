defmodule Starsoul.PageController do
  use Starsoul.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

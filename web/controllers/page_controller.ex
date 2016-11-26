defmodule Starsoul.PageController do
  use Starsoul.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def about(conn, _params) do
    render conn, "about.html"
  end

  def service(conn, _params) do
    render conn, "service.html"
  end

end

defmodule WailWeb.ApiController do
  use WailWeb, :controller

  def index(conn, _params) do
    json conn, %{name: "name"}
  end
end

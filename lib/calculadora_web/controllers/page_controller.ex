defmodule CalculadoraWeb.PageController do
  use CalculadoraWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule BankeyPhxWeb.PageController do
  use BankeyPhxWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

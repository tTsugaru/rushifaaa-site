defmodule BackendWeb.PageController do
  use BackendWeb, :controller

  def index(conn, _params) do
    json(conn, %{
      name: "rushifaaa-site",
      developed_by: "Rushifaaa",
      github: "https://github.com/Rushifaaa/rushifaaa-site"
    })
  end
end

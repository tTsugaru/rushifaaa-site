defmodule BackendWeb.UserController do
  use BackendWeb, :controller

  defmodule User do
    use TypedStruct

    typedstruct do
      field :username, String.t(), enforce: true
      field :password, String.t(), enforce: true
      field :email, String.t(), enforce: true
    end
  end

  def index(conn, _params) do
    render(conn, %{
      status: 200
    })
  end

  @spec add_user(Plug.Conn.t(), map) :: Plug.Conn.t()
  def add_user(conn, %{
        "username" => username,
        "password" => password,
        "email" => email
      }) do
    if email != nil && username != nil && password != nil do
      json(conn, %{
        status: 200
      })
    else
      json(conn, %{
        status: 400
      })
    end
  end
end

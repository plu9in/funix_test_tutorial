defmodule FunixTestTutorial.TestRouter do

  @moduledoc false

  use Phoenix.Router

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/api" do
    pipe_through :api

    require FunixTestTutorial
    FunixTestTutorial.mount
  end
end

defmodule FunixTestTutorial.RouterHelper do
  use Plug.Test

  @moduledoc """
  Conveniences for testing libraries that need connections.
  """


  defmacro __using__(_) do
    quote do
      use Plug.Test
      import RouterHelper
    end
  end

  def call(router, verb, path, params \\ nil, headers \\ []) do
    conn =  Plug.Adapters.Test.Conn.conn(%Plug.Conn{private: %{phoenix_endpoint: FunixTestTutorial.Endpoint}}, verb, path, params)
    conn = Enum.reduce(headers, conn, fn ({name, value}, conn) -> put_req_header(conn, name, value) end)
           |> Plug.Conn.fetch_query_params
    router.call(conn, router.init([]))
  end

end

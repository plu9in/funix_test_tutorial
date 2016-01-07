defmodule FunixTestTutorial.Controllers.Users do
  @moduledoc false
  use Phoenix.Controller
  def create(conn, params \\ :empty) do
    json conn, :ok
  end

end
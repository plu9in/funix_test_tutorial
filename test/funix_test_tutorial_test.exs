defmodule FunixTestTutorialTest do
  use FunixTestTutorial.ConnCase

  doctest FunixTestTutorial

  test "the truth" do
    conn = call(FunixTestTutorial.TestRouter, :get,  "/api/users")
    IO.puts "#{inspect Phoenix.Token.sign(conn, "user", 1)}"

    assert 1 + 1 == 2
  end
end

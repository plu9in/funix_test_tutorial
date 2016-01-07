defmodule FunixTestTutorial.ConnCase do
  @moduledoc """
    This module defines the test case to be used by
    tests that require setting up a connection.
    Such tests rely on `Phoenix.ConnTest` and also
    imports other functionality to make it easier
    to build and query models.
    Finally, if the test case interacts with the database,
    it cannot be async. For this reason, every test runs
    inside a transaction which is reset at the beginning
    of the test unless the test case is marked as async.
    """

  use ExUnit.CaseTemplate
  alias FunixTestTutorial.Endpoint

  using do
    quote do
      # Import conveniences for testing with connections
      use Phoenix.ConnTest
      import FunixTestTutorial.RouterHelper

      # The default endpoint for testing
      @endpoint FunixTestTutorial.Endpoint
    end
  end

  setup_all do
    Endpoint.start_link()
    on_exit fn -> Application.delete_env(:funix_test_tutorial, :serve_endpoints) end
    :ok
  end

end


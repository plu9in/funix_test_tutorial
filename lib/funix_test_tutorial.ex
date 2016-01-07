defmodule FunixTestTutorial do
    defmacro mount do
        quote do
            get  "users",                 FunixTestTutorial.Controllers.Users, :create
        end
    end
end

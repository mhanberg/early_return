defmodule EarlyReturnTest do
  use ExUnit.Case
  doctest EarlyReturn

  test "greets the world" do
    assert EarlyReturn.hello() == :world
  end
end

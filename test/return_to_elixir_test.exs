defmodule ReturnToElixirTest do
  use ExUnit.Case
  doctest ReturnToElixir

  test "greets the world" do
    assert ReturnToElixir.hello() == :world
  end
end

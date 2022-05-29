defmodule NxHandsonTest do
  use ExUnit.Case
  doctest NxHandson

  test "greets the world" do
    assert NxHandson.hello() == :world
  end
end

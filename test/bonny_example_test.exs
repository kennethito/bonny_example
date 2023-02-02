defmodule BonnyExampleTest do
  use ExUnit.Case
  doctest BonnyExample

  test "greets the world" do
    assert BonnyExample.hello() == :world
  end
end

defmodule BonnyExample.Controller.BonnyExampleControllerTest do
  @moduledoc false
  use ExUnit.Case, async: false
  use Bonny.Axn.Test

  alias BonnyExample.Controller.BonnyExampleController

  test "add is handled and returns axn" do
    axn = axn(:add)
    result = BonnyExampleController.call(axn, [])
    assert is_struct(result, Bonny.Axn)
  end

  test "modify is handled and returns axn" do
    axn = axn(:modify)
    result = BonnyExampleController.call(axn, [])
    assert is_struct(result, Bonny.Axn)
  end

  test "reconcile is handled and returns axn" do
    axn = axn(:reconcile)
    result = BonnyExampleController.call(axn, [])
    assert is_struct(result, Bonny.Axn)
  end

  test "delete is handled and returns axn" do
    axn = axn(:delete)
    result = BonnyExampleController.call(axn, [])
    assert is_struct(result, Bonny.Axn)
  end
end

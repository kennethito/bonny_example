defmodule BonnyExample.Controller.BonnyExampleController do
  @moduledoc """
  BonnyExample: BonnyExampleController controller.

  """
  use Bonny.ControllerV2

  step Bonny.Pluggable.SkipObservedGenerations
  step :handle_event

  # apply the resource
  def handle_event(%Bonny.Axn{action: action} = axn, _opts)
      when action in [:add, :modify, :reconcile] do
    IO.inspect(axn.resource)
    success_event(axn)
  end

  # delete the resource
  def handle_event(%Bonny.Axn{action: :delete} = axn, _opts) do
    IO.inspect(axn.resource)
    axn
  end
end

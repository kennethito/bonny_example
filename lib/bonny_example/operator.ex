defmodule BonnyExample.Operator do
  @moduledoc """
  Defines the operator.

  The operator resource defines custom resources, watch queries and their
  controllers and serves as the entry point to the watching and handling
  processes.
  """

  use Bonny.Operator, default_watch_namespace: "default"

  step(Bonny.Pluggable.Logger, level: :info)
  step(:delegate_to_controller)
  step(Bonny.Pluggable.ApplyStatus)
  step(Bonny.Pluggable.ApplyDescendants)

  @impl Bonny.Operator
  def controllers(watching_namespace, _opts) do
    [
      %{
        query:
          K8s.Client.list("bonny-example.test.com/v1", "BonnyExample",
            namespace: watching_namespace
          ),
        controller: BonnyExample.Controller.BonnyExampleController
      }
    ]
  end

  @impl Bonny.Operator
  def crds() do
    [
      %Bonny.API.CRD{
        group: "bonny-example.test.com",
        names: %{
          kind: "BonnyExample",
          plural: "bonnyexamples",
          shortNames: [],
          singular: "bonnyexample"
        },
        scope: :Namespaced,
        versions: [BonnyExample.API.V1.BonnyExample]
      }
    ]
  end
end

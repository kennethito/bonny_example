defmodule BonnyExample.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, env: env) do
    children = [{BonnyExample.Operator, conn: BonnyExample.K8sConn.get!(env)}]

    opts = [strategy: :one_for_one, name: BonnyExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

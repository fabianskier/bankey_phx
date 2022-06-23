defmodule BankeyPhx.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BankeyPhx.Repo,
      # Start the Telemetry supervisor
      BankeyPhxWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BankeyPhx.PubSub},
      # Start the Endpoint (http/https)
      BankeyPhxWeb.Endpoint
      # Start a worker by calling: BankeyPhx.Worker.start_link(arg)
      # {BankeyPhx.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: BankeyPhx.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BankeyPhxWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

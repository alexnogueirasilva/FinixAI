defmodule ActionCms.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ActionCmsWeb.Telemetry,
      ActionCms.Repo,
      {DNSCluster, query: Application.get_env(:action_cms, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ActionCms.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: ActionCms.Finch},
      # Start a worker by calling: ActionCms.Worker.start_link(arg)
      # {ActionCms.Worker, arg},
      # Start to serve requests, typically the last entry
      ActionCmsWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ActionCms.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ActionCmsWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

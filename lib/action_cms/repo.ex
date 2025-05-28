defmodule ActionCms.Repo do
  use Ecto.Repo,
    otp_app: :action_cms,
    adapter: Ecto.Adapters.Postgres
end

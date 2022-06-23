defmodule BankeyPhx.Repo do
  use Ecto.Repo,
    otp_app: :bankey_phx,
    adapter: Ecto.Adapters.Postgres
end

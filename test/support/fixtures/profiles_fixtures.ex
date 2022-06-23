defmodule BankeyPhx.ProfilesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `BankeyPhx.Profiles` context.
  """

  @doc """
  Generate a profile.
  """
  def profile_fixture(attrs \\ %{}) do
    {:ok, profile} =
      attrs
      |> Enum.into(%{
        first_name: "some first_name",
        last_name: "some last_name"
      })
      |> BankeyPhx.Profiles.create_profile()

    profile
  end
end

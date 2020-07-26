defmodule HrStars.Application do
  @moduledoc """
  Application to scrape data
  """
  use Application

  @impl true
  def start(_type, _config) do
    children = []

    opts = [strategy: :one_for_one, name: HrStars.Supervisor]

    Supervisor.start_link(children, opts)
  end
end

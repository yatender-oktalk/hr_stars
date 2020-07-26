defmodule Radar do
  use Crawly.Spider

  @impl Crawly.Spider
  def base_url(), do: "https://elixir-radar.com"

  @impl Crawly.Spider
  def init() do
    [
      start_urls: [
        "https://elixir-radar.com/jobs"
      ]
    ]
  end

  @impl Crawly.Spider
  def parse_item(_response) do
    %Crawly.ParsedItem{:items => [], :requests => []}
  end

  def parse_item_block(block) do
    title = block |> Floki.find(".job-board-job-title") |> Floki.text()
    location = block |> Floki.find(".job-board-job-location") |> Floki.text()
  end
end

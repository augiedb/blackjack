defmodule Card do

  defstruct suit: "", rank: "", value: ""

  def init_points(rank) when rank > 1 and rank < 11, do: rank
  def init_points('Ace'), do: 11
  def init_points(_), do: 10

  def describe(card) do
    "#{card.rank} of #{card.suit}"
  end


end


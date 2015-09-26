defmodule Deck do

  def init do
    for rank <- ['Ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King'],
        suit <- ['Hearts', 'Diamonds', 'Clubs', 'Spades']
    do
      %Card{rank: rank, suit: suit, value: Card.inir_points(rank)}
    end
  end

  def shuffle(deck) do
    deck |> Enum.shuffle |> Enum.shuffle
  end

end


defmodule HandTest do
  use ExUnit.Case
  doctest Blackjack

    @carda1 %Card{rank: 'Ace', suit: 'Diamonds', value: Card.init_points('Ace')}
    @carda2 %Card{rank: 'Ace', suit: 'Diamonds', value: Card.init_points('Ace')}

    @card_6  %Card{rank: 6, suit: 'Diamonds', value: Card.init_points(6)}
    @card_J  %Card{rank: 'Jack', suit: 'Hearts', value: Card.init_points('Jack')}
    @card_5  %Card{rank: 5, suit: 'Diamonds', value: Card.init_points(5)}



  test "the truth" do
    assert 1 + 1 == 2
  end

  test "Score a non-Ace hand" do
    assert Hand.current_score([@card_5, @card_6])  == 11
    assert Hand.current_score([@card_5, @card_5])  == 10
    assert Hand.current_score([@card_J, @card_6])  == 16
    assert Hand.current_score([@card_J, @card_J])  == 20 
  end

  test "Score an Ace hand" do
    assert Hand.current_score([@carda1, @card_J]) == 21
    assert Hand.current_score([@carda1, @carda2]) == 12 
    assert Hand.current_score([@carda2, @carda1]) == 12
  end

  test "Score hands with more than two cards" do
    assert Hand.current_score([@card_5, @card_6, @card_J]) == 21
    assert Hand.current_score([@card_5, @card_6, @carda1]) == 12
    assert Hand.current_score([@carda1, @carda1, @carda2, @card_5]) == 18
    assert Hand.current_score([@carda1, @carda1, @carda2, @carda2]) == 14 # FOUR Aces

  end


end

defmodule Hand do

  def init do
    # To be added later, perhaps    
  end
 
  def current_score(list_of_cards) do
    do_current_score(list_of_cards, 0, 0)
  end

  def do_current_score([], number_of_aces, score) when score > 21 and number_of_aces > 0 do
    do_current_score([], number_of_aces-1, score - 10)
  end

  def do_current_score([], _aces, score) do
    score
  end

  def do_current_score([head | tail], number_of_aces, score) do
    if (head.rank == 'Ace') do
      number_of_aces = number_of_aces + 1
    end
    do_current_score(tail, number_of_aces, score + head.value) 
  end

end


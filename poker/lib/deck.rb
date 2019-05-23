require_relative 'card.rb'

class Deck
  attr_reader :active_cards
  def initialize
    @active_cards = Card.generate_cards
    @discard_pile = []
  end

end
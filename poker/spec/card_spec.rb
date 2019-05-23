
require "rspec"
require "card.rb"

RSpec.describe Card do
  describe "#initialize" do
    subject(:card_instance){Card.new(:clubs, :nine)}
    it "sets a suit" do
      expect(card_instance.suit).to eq(:clubs)
    end
    it "sets a value" do
      expect(card_instance.value).to eq(:nine)
    end
  end

  describe "::generate_cards" do
    subject(:cards){Card.generate_cards}

    it "returns an array of cards with 13 of each suit" do
      num_clubs = cards.count { |card| card.suit == :clubs}
      expect(num_clubs).to eq(13)
    end

    it "has no duplicate cards" do
      expect(cards.uniq).to eq cards
    end

    it 'has 52 cards' do
      expect(cards.length).to eq 52
    end


  end

end
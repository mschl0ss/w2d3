require "rspec"
require "deck.rb"


RSpec.describe Deck do
  describe "#initialize" do 
    subject(:deck){Deck.new}

    it "should call Card.generate cards" do
      expect(Card).to receive(:generate_cards)
     Deck.new
    end

    describe "@active_cards" do
      it "sets active cards to an array" do
        expect(deck.active_cards.is_a?(Array)).to be true
      end #sets active cards
    end
    
  end

end
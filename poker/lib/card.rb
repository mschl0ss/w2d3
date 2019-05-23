class Card

  attr_reader :suit, :value

  SUITS = [:clubs, :diamonds, :spades, :hearts].freeze
  VALUES = [:two,:three,:four,
    :five,:six,:seven,
    :eight,:nine,:ten,
    :jack,:queen,:king,:ace ].freeze

  def initialize(suit,value)
    @suit = suit
    @value = value
  end

  def self.generate_cards
    result = []

    for suit in SUITS
      for value in VALUES
        result << Card.new(suit,value)
      end
    end

    result

  end

end
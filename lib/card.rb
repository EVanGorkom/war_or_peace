class Card
    attr_reader :suit, :value, :rank

    def initialize(suit, value, rank)
        @suit = suit
        @value = value
        @rank = rank
    end
end

card1 = Card.new("heart", "Jack", 11)
card2 = Card.new("heart", "Queen", 12)
card3 = Card.new("heart", "King", 13)

cards = [card1, card2, card3]

class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end
    
    def rank_of_card_at(index_position)
        
        # require 'pry'; binding.pry
        @cards[index_position].rank
    end

    def high_ranking_cards
        high_ranking_cards = if @cards[index_position].rank >= 11
            # here we want to save a new array called "high_ranking_cards" with the info that passes through the conditional.
        end
    end
end


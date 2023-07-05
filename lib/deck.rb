class Deck
    attr_reader :cards

    def initialize(cards)
        @cards = cards
    end
    
    def rank_of_card_at(index_position)
        @cards[index_position].rank
    end

    def high_ranking_cards
        @cards.find_all do |card|
        card.rank >= 11
        end
    end
    
    def percent_high_ranking
        percent = (high_ranking_cards.count.to_f / cards.count.to_f) * 100
        percent.round(2)
    end

    def remove_card
        @cards.delete_at(0)
    end

    def add_card(card)
        # require 'pry';binding.pry
        @cards.push(card)
    end
end
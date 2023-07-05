class Player
    attr_reader :name, :deck

    def initialize(name, deck)
        # require 'pry';binding.pry
        @name = name
        @deck = deck
    end

    def has_lost?
        # need to add a contigent for WHEN the game is lost.
        # the player has no more cards. Use an until, or while method
    end
end
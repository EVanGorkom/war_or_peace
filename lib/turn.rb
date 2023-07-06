class Turn
    attr_reader :player1, :player2, :spoils_of_war

    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @turn = basic
    end

    def type
        # need a default value attr that can be changed based on the following. the attr needs to change based on these conditionals and THEN we can pass it through the 'winner' method.

        if player1.deck.cards.rank_of_card_at(0) != player2.deck.cards.rank_of_card_at(0)
            @turn = "basic"
        elsif player1.deck.cards.rank_of_card_at(0) == player2.deck.cards.rank_of_card_at(0)
            @turn = "WAR"
        elsif player1.deck.cards.rank_of_card_at(0) && player1.deck.cards.rank_of_card_at(2) == player2.deck.cards.rank_of_card_at(0) && player2.deck.cards.rank_of_card_at(2)
            @turn = "M.A.D."
        end
    end

    def winner
        if @turn == "basic" && player1.deck.cards.rank_of_card_at(0) > player2.deck.cards.rank_of_card_at(0)
            "#{player1} has won the turn."
        elsif @turn == "basic" && player1.deck.cards.rank_of_card_at(0) < player2.deck.cards.rank_of_card_at(0)
            "#{player2} has won the turn."
        elsif @turn == "WAR" && player1.deck.cards.rank_of_card_at(2) > player2.deck.cards.rank_of_card_at(2)
            "#{player1} has won the turn."
        elsif @turn == "WAR" && player1.deck.cards.rank_of_card_at(2) < player2.deck.cards.rank_of_card_at(2)
            "#{player2} has won the turn."
        elsif @turn == "M.A.D."
            "No Winner"
        end
    end

    # def pile_cards

end
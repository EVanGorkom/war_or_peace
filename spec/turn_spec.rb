require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'

describe Turn do
    it "exists" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)    
        card3 = Card.new(:heart, 'Ace', 14)    
        cards = [card1, card2, card3]

        deck1 = Deck.new(cards)
        deck2 = Deck.new(cards)

        player1 = Player.new("Megan", deck)
        player2 = Player.new("Aurora", deck)

        turn1 = Turn.new(player1, player2)

        expect(player1).to be_an_instance_of(Player)
    end

    it "has readable attributes" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)    
        card3 = Card.new(:heart, 'Ace', 14)    
        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        player1 = Player.new("Clarisa", deck)

        expect(player1.name).to eq("Clarisa")
        expect(player1.deck).to eq(deck)
    end
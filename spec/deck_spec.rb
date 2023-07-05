require 'rspec'
require './lib/card'
require './lib/deck.rb'

describe Deck do 
    it "exists" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)    
        card3 = Card.new(:heart, 'Ace', 14)    
        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck).to be_an_instance_of(Deck)
    end

    it "has readable attributes" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)    
        card3 = Card.new(:heart, 'Ace', 14)    
        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck.cards).to eq([card1, card2, card3])
    end

    it "can get rank of card at specific index" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)    
        card3 = Card.new(:heart, 'Ace', 14)
        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck.rank_of_card_at(0)).to eq(12)
        expect(deck.rank_of_card_at(2)).to eq(14)
    end

    it "can get the ranks of cards 11 and up" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)    
        card3 = Card.new(:heart, 'Ace', 14)
        cards = [card1, card2, card3]

        deck = Deck.new(cards)
        
        expect(deck.high_ranking_cards).to eq([card1, card3])
    end

    it "can find the percentage of high ranking cards in the deck" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)    
        card3 = Card.new(:heart, 'Ace', 14)
        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck.percent_high_ranking).to eq(66.67)
    end

    it "can remove cards from the deck" do
        card1 = Card.new(:diamond, 'Queen', 12)
        card2 = Card.new(:spade, '3', 3)    
        card3 = Card.new(:heart, 'Ace', 14)
        cards = [card1, card2, card3]

        deck = Deck.new(cards)

        expect(deck.remove_card).to eq([card2, card3])
    end
    
end
require 'rspec'
require './lib/card'

RSpec.describe Card do
  it "exists" do
    card = Card.new(:diamond, 'Queen', 12)

    expect(card).to be_an_instance_of(Card)
  end

  it "has readable attributes" do
    card = Card.new(:diamond, 'Queen', 12)

    expect(card.suit).to eq(:diamond)
    expect(card.value).to eq('Queen')
    expect(card.rank).to eq(12)
  end
end


# check out a youtube video on how to play war before beginning the project.

# We're going to get errors and we're going to build our Card class based on the feedback we get from running our tests.
# Now we're going to make a deck class
# Iteration 1 is to build our card class and our deck class. The goal is to understand how to build our classes and have them interact. Learn how to call tests.
# Iteration 2 is to create a new class called Player and a turn class. then we will create new methods for them to interact. 
# Iteration 3 
require './lib/exhibit'
require './lib/patron'
require 'pry'

RSpec.describe Patron do
  # let(:patron_1) {Patron.new("Bob", 20)}

    it 'exists' do
      patron_1 = Patron.new("Bob",20)
      expect(patron_1).to be_a(Patron)
    end

    it 'class attributes retrievable and #add_interest receives elements' do
      patron_1 = Patron.new("Bob",20)
      patron_1.add_interest("Gems and Minerals")
      patron_1.add_interest("Dead Sea Scrolls")
      expect(patron_1.name).to eq("Bob")
      expect(patron_1.spending_money).to eq(20)
      expect(patron_1.interests).to eq(["Gems and Minerals", "Dead Sea Scrolls"])
    end
end

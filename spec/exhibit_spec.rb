require './lib/exhibit'
require './lib/patron'
require 'pry'

RSpec.describe Exhibit do
  it 'exists' do
    exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
    expect(exhibit).to be_a(Exhibit)
  end
end

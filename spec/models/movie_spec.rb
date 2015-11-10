require 'rails_helper'

RSpec.describe Movie, type: :model do
  # Items seed from db/seeds.rb
  it 'has 10 items' do
    expect(Movie.count).to be 10
  end

end

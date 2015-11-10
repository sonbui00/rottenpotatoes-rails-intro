require 'rails_helper'

RSpec.describe 'movies/index', type: :view do
  before(:each) do
    assign(:movies, Movie.all)
  end

  it 'renders a link to sort movies' do
    render
    assert_select 'a#title_header'
    assert_select '#movies a#release_date_header'
  end
end

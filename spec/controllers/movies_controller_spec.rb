require 'rails_helper'

RSpec.describe MoviesController, type: :controller do

  describe "GET #index" do
    it 'assigns all movies as @movies' do
      get :index
      expect(assigns(:movies)).to eq(Movie.all)
    end
    it 'sorts by title' do
      get :index, {order: 'title'}
      expect(assigns(:movies)).to eq(Movie.order(title: :asc).all)
    end
    it 'sorts by release_date' do
      get :index, {order: 'release_date'}
      expect(assigns(:movies)).to eq(Movie.order(release_date: :asc).all)
    end
  end
end

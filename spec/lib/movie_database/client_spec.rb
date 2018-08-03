require 'rails_helper'
require './lib/movie_database/client.rb'
RSpec.describe "client", :vcr do
  it "#popular_tv_shows" do
    client = MovieDatabase::Client.new
    popular_tv_shows = client.popular_tv_shows
    expect(popular_tv_shows.code).to eq 200 
  end

  it "#" do
    
  end
    

end
  


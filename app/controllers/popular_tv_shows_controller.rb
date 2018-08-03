require './lib/movie_database/client'
class PopularTvShowsController < ApplicationController
  include MovieDatabase
def index
  client = MovieDatabase::Client.new
  @popular_tv_shows = client.popular_tv_shows
  
end

end

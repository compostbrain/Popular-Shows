module MovieDatabase
  class Client
    include HTTParty
    API_KEY = Rails.application.credentials.movie_database[:api_key]
    BASE_URL = 'https://api.themoviedb.org/3'

    def initialize
      
    end

    def popular_tv_shows page: "1"
      url = BASE_URL + "/discover/tv?api_key=" + API_KEY + "&language=en-US&sort_by=popularity.desc&page=" + page + "&timezone=America%2FNew_York&include_null_first_air_dates=false"
      self.class.get(url)
    end
    
    
  end
  
end
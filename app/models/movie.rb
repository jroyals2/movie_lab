class Movie < ApplicationRecord
    include HTTParty
    base_uri 'http://www.omdbapi.com/?apikey=d31f1a94&i='

    def self.generate(api_id)
        response = get api_id
        create!(title: response["Title"],
                genre: response["Genre"],
                year: response["Year"],
                synopis: response["Plot"],
                picture: response["Poster"]
        )
    end
    has_many :favorite_movies
    has_many :users, through: :favorite_movies
end

    # Tabled code        
        # 5.times do
        # id = (2900000..3000000).to_a
        # random_number = id.sample
        # response = get("#{random_number}")
        # puts random_number
        # puts response
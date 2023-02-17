json.extract! movie, :id, :title, :image, :genres, :raiting, :created_at, :updated_at
json.url movie_url(movie, format: :json)

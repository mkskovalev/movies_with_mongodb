class Movie
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :image, type: String
  field :raiting, type: Float

  validates :title, uniqueness: true
  validates :title, :image, :raiting, presence: true
end

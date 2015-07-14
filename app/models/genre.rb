class Genre < ActiveRecord::Base
  has_many :songs, through: :meesh_songs_genres
  has_many :meesh_songs_genres

  validates :name, presence: true
  validates :name, uniqueness: true
end

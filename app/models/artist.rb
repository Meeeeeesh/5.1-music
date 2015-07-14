class Artist < ActiveRecord::Base
  has_many :songs
  has_many :albums, through: :meesh_artists_albums
  has_many :meesh_artists_albums

  validates :name, presence: true
  validates :name, uniqueness: true
end

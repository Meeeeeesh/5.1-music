class Playlist < ActiveRecord::Base
  has_many :songs, through: :meesh_songs_playlists
  has_many :meesh_songs_playlists
  
  validates :name, presence: true
  validates :name, uniqueness: true
end

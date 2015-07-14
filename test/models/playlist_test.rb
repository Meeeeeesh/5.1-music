require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  test "do ideal conditions work as intended" do
    p1 = Playlist.create(name: "Dancing in my kitchen")
    p1 = Playlist.find_by(name: "Dancing in my kitchen")
    assert p1
    assert_equal p1.class, Playlist
  end

  test "cannot create without playlist name" do
    p1 = Playlist.new
    refute p1.valid?
  end
  
  test "must have unique playlist name" do
    p1 = Playlist.create(name: "Dancing in my kitchen")
    p2 = Playlist.new(name: "Dancing in my kitchen")
    refute p2.valid?
  end

end

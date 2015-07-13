# require 'test_helper'

# class SongTest < ActiveSupport::TestCase
#   test "cannot create without title" do
#   end

#   test "cannot create without artist" do
#   end

#   test "cannot create without length" do
#   end 

#   test "length must be integer" do
#   end 

#   test "cannot have duplicate entry" do
#   end 

#   test "song can have multiple artists" do
#   end

#   test "artist can have multiple song entries" do
#   end 

#   test "do ideal conditions work as intended" do
#   end

#   test "cannot create without song titles" do
#     c = Album.new(title: 'Give Up', song: '', artist: 'The Postal Service')
#     refute c.valid? 
#   end

#   test "cannot create duplicate song titles" do
#     Album.create!(title: 'Give Up', song: 'Nothing Better', artist: 'The Postal Service')
#     d = Album.new(title: 'Give Up', song: 'Nothing Better', artist: 'The Postal Service')
#     refute d.valid?
#   end

#   test "can have multiple songs" do
#     Album.create!(title: 'Give Up', song: 'Nothing Better', artist: 'The Postal Service')
#     e = Album.new(title: 'Give Up', song: 'Brand New Colony', artist: 'The Postal Service')
#     assert e.valid?
#   end
# end


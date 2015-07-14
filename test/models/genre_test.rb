require 'test_helper'

class GenreTest < ActiveSupport::TestCase
  test "do ideal conditions work as intended" do
    e = Genre.create(name: "Electronic")
    e = Genre.find_by(name: "Electronic")
    assert e
    assert_equal e.class, Genre
  end

  test "cannot create without genre name" do
    e = Genre.new
    refute g.valid?
  end

  test "must have unique genre name" do
    e = Genre.create(name: "Electronic")
    e2 = Genre.new(name: "Electronic")
    refute e2.valid?
  end
  
end

require 'minitest/autorun'
require_relative '../movie'

class MovieTest < Minitest::Test
  def test_movie_initialization
    movie = Movie.new("Inception", "A mind-bending thriller", "Sci-Fi")
    assert_equal "Inception", movie.title
    assert_equal "A mind-bending thriller", movie.description
    assert_equal "Sci-Fi", movie.category
  end
end

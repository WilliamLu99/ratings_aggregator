require "test_helper"
require "ratings_aggregator"

class RatingsAggregatorTest < Minitest::Test
  # Your own key is needed to run these tests
  OMDB_KEY = ''

  def setup
    @aggregator = RatingsAggregator::Base.new
    @aggregator.set_key(OMDB_KEY)
  end

  def test_that_it_has_a_version_number
    refute_nil ::RatingsAggregator::VERSION
  end

  def test_search_function_returns_proper_score
    assert_equal 92, @aggregator.search('Wall-E')
    assert_equal 92, @aggregator.search('Wall-E')
  end

  def test_search_function_works_when_OMDB_provides_multiple_movies
    assert_equal 76, @aggregator.search('Monster')
  end
    
end

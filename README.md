# ratings_aggregator
A ruby gem that aggregates the rating of a movie via OMDB

## Installation

$ gem build ratings_aggregator.gemspec

$ [sudo] install ./ratings_aggregator-[VERSION].gem

## Usage

[You must get your own OMDB key to use this gem](http://www.omdbapi.com/)

### Create a new aggregator object
`aggregator = RatingsAggregator::Base.new`

### Give it a valid OMDB key 
`aggregator.set_key('YOUR_KEY')`

### Get the aggregated score of a rating
`aggregator.search('MOVIE_TITLE')`

Note that if your search query returns multiple results, you will only get the data of the first movie in the query.

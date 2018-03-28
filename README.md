# ratings_aggregator
A ruby gem that aggregates the rating of a movie via OMDB

##Installation
$ gem build ratings_aggregator.gemspec
$ [sudo] install ./ratings_aggregator-[VERSION].gem

##Usage
RatingsAggregator::Base.new.search("[TITLE]") returns the following object:
{movie: [MOVIE_RESULTS], status: RESPONSE_CODE}

where MOVIE_RESULTS is an array of movie objects, and RESPONSE_CODE is the response code of the API call to OMDB.

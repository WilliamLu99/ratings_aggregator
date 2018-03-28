# ratings_aggregator
A ruby gem that aggregates the rating of a movie via OMDB

## Installation
$ [sudo] gem install bundle

$ bundle install

## Usage

RatingsAggregator::Base.new.search("[TITLE]")

returns the following object:

{movie: {MOVIE_RESULTS}, status: RESPONSE_CODE}

where MOVIE_RESULTS is a movie object, and RESPONSE_CODE is the response code of the API call to OMDB.

Example usage:
 > movie = RatingsAggregator::Base.new.search("Monster")

 > movie[:movie]["Ratings"]

 returns ratings for the movie returned as an array of ratings objects

 Sample output for movie[:movie]["Ratings"]:

 [{"Source"=>"Internet Movie Database", "Value"=>"7.3/10"}, {"Source"=>"Rotten Tomatoes", "Value"=>"81%"}, {"Source"=>"Metacritic", "Value"=>"74/100"}]

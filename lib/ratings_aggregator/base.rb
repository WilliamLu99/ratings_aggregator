require 'net/http'
require 'json'
require_relative 'api'

module RatingsAggregator
  # API_URL = "http://www.omdbapi.com/?apikey=[yourkey]&"
  class Base
    attr_accessor :api

    def search(search_title)
      response = api.call(t: search_title)
      # puts response
      if response[:data]["Response"] == "False"
        { movies: {}, status: 404 }
      else
        #grabs movies in results array
        puts response[:data]
        { movies: (response[:data]), status: response[:code] }
      end
    end
    def api
      @api ||= RatingsAggregator::Api.new
    end
  end
end

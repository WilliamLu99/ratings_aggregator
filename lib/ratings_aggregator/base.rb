require 'net/http'
require 'json'
require_relative 'api'

module RatingsAggregator
  class Base
    def search(search_title)
      begin
        response = api.call(t: search_title, apikey: @key)
      rescue Exception => e
        puts "Please set the API key"
        return
      end
      # puts response
      if response[:data]["Response"] == "False"
        nil
      else
        # pulls out the strings that represent the rating scores
        rating_scores = response[:data]["Ratings"].map {|x| x["Value"]}

        sum = 0.0
        rating_scores.each do |score|
          to_add = score.to_f
          if /.+\/10$/.match score
            to_add *= 10
          end
          sum += to_add
        end
        aggregate_score = (sum/rating_scores.length).round
      end
    end
    def api
      @api ||= RatingsAggregator::Api.new
    end

    def set_key(key)
      @key = key
    end
  end
end

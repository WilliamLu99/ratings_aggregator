require 'net/http'
require 'json'
require 'rest_client'
require_relative 'base'

module RatingsAggregator
  class Api
    API_URL = "http://www.omdbapi.com/?apikey=4fa3c3a3&"

    attr_accessor :response
    def call(params)
      response = RestClient.get API_URL, params: params
        {
          code: response.code,
          data: JSON.parse(response.body)
        }
    end
  end
end
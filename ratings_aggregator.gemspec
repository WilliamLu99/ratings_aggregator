# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ratings_aggregator"

Gem::Specification.new do |s|
  s.name        = "ratings_aggregator"
  s.version     = RatingsAggregator::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["William Lu", "Jodi Sloan"]
  s.email       = ["william.lu@Shopify.com", "jodi.sloan@shopify.com"]
  s.homepage    = ""
  s.summary     = %q{Provides an aggregate rating}
  s.description = %q{Searches for a movie using OMDB, and computes an aggregate rating. Users must provide their own key}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Productions gems
  s.add_dependency "json"
  s.add_dependency "rest-client"

  s.add_development_dependency "bundler", "~> 1.16"
  s.add_development_dependency "rake", "~> 10.0"
end

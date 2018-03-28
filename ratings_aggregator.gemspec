lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ratings_aggregator/version"

Gem::Specification.new do |spec|
  spec.name          = "ratings_aggregator"
  spec.version       = RatingsAggregator::VERSION
  spec.authors       = ["William Lu"]
  spec.email         = ["william.lu@shopify.com"]

  spec.summary       = %q{Provides an aggregate rating for a given movie}
  spec.description   = %q{Searches for a movie using OMDB, then computes an aggregate critic rating for it. Users must provide their own key}

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency "json"
  spec.add_dependency "rest-client"
end

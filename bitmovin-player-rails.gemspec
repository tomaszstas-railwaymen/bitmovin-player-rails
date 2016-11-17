$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bitmovin/player/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bitmovin-player-rails"
  s.version     = Bitmovin::Player::Rails::VERSION
  s.authors     = ["Daniel Hoelbling-Inzko"]
  s.email       = ["daniel.hoelbling-inzko@bitmovin.com"]
  s.homepage    = "https://bitmovin.com/html5-player/"
  s.summary     = "An Adaptive HTML5 Video Player"
  s.description = "Quickly embed Bitmovin-Player in your Rails app"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"
	s.add_development_dependency "sqlite3"
end

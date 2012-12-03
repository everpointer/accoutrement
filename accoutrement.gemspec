Gem::Specification.new do |s|
  # Release Specific Information
  s.version = "0.0.2"
  s.date = "2012-11-30"

  # Gem Details
  s.name = "accoutrement"
  s.authors = ["Eric Meyer"]
  s.summary = %q{Assorted Sass/Compass accoutrement & accessories}
  s.description = %q{Assorted Sass/Compass accoutrement & accessories}
  s.email = "eric@oddbird.net"
  s.homepage = "http://oddbird.net/"

  # Gem Files
  s.files = %w(README.md)
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.12.2"])
end


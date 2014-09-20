$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "test_models/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "test_models"
  s.version     = TestModels::VERSION
  s.authors     = ["Jon Calhoun"]
  s.email       = ["dev@upmin.com"]
  s.homepage    = "https://www.upmin.com"
  s.summary     = "Test Models for the Upmin Admin test suite."
  s.description = "Test Models for the Upmin Admin test suite."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails"
end

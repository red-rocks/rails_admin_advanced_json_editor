$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_jsoneditor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_jsoneditor"
  s.version     = RailsAdminJsoneditor::VERSION
  s.authors     = ["Vitaly Liber", "Alexander Kiseliev"]
  s.email       = ["liber@sibext.com", "dev@redrocks.pro"]
  s.homepage    = "https://github.com/red-rocks/rails_admin_advanced_json_editor"
  s.summary     = "Rails Admin json editor."
  s.description = "Rails Admin json editor."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails_admin", ">=1.3.0"
  s.add_dependency "jsoneditor-rails", ">=1.0.2"
end

Gem::Specification.new do |gem|
  gem.name          = "embulk-plugin-filter-grep"
  gem.version       = "0.0.1"

  gem.summary       = %q{Embulk Fileter Plugin Grep}
  gem.description   = gem.summary
  gem.authors       = ["Tadaichiro Nakano"]
  gem.email         = ["nakanotadaichiro@outlook.jp"]
  gem.homepage      = "https://github.com/tadaichiro/embulk-plugin-filter-grep"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.8"
  # spec.add_development_dependency "rake", "~> 10.0"
  # spec.add_development_dependency "rspec"
end

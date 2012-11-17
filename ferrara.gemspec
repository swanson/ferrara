# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ferrara/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Swanson"]
  gem.email         = ["mdswanson@sep.com"]
  gem.description   = "Ferrara fetches link to TV show episodes."
  gem.summary       = "Ferrara fetches link to TV show episodes."
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "ferrara"
  gem.require_paths = ["lib"]
  gem.version       = Ferrara::VERSION

  gem.add_runtime_dependency "httparty"
end

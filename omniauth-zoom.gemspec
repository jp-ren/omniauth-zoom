# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-zoom/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brian Arpie"]
  gem.email         = ["brian@aloe.ai"]
  gem.description   = %q{OmniAuth strategy for Zoom API v2.}
  gem.summary       = %q{OmniAuth strategy for Zoom API v2.}
  gem.homepage      = "https://github.com/aloeai/omniauth-zoom"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "omniauth-zoom"
  gem.require_paths = ["lib"]
  gem.version       = OmniAuth::Zoom::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end

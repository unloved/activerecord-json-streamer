# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord-json-streamer/version'

Gem::Specification.new do |gem|
  gem.name          = "activerecord-json-streamer"
  gem.version       = Activerecord::Json::Streamer::VERSION
  gem.authors       = ["Alexander Logunov"]
  gem.email         = ["unlovedru@gmail.com"]
  gem.description   = 'Adds support for streaming huge json data of activerecord models'
  gem.summary       = gem.description
  gem.homepage      = "http://github.com/unloved/activerecord-json-streamer"

  gem.add_dependency 'activerecord'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'sqlite3'
  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

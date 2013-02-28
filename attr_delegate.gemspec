# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'attr_delegate/version'

Gem::Specification.new do |gem|
  gem.name          = "attr_delegate"
  gem.version       = AttrDelegate::VERSION
  gem.authors       = ["Vlad Verestiuc"]
  gem.email         = ["vlad.verestiuc@me.com"]
  gem.description   = %q{Delegates attributes to another object}
  gem.summary       = %q{Delegates attributes to another object}
  gem.homepage      = "http://vvlad.info"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "activesupport"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "guard-bundler"
  gem.add_development_dependency "rb-fsevent"
end

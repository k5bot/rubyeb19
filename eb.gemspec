# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eb/version'

Gem::Specification.new do |spec|
  spec.name          = "eb"
  spec.authors       = ['Nishikawa Yasuhiro', 'Kubo Takehiro']
  spec.homepage      = 'http://rubyeb.sourceforge.net/'
  spec.email         = 'nyasu3w@users.sourceforge.net'
  spec.version       = EB::VERSION
  spec.summary       = "Ruby binding to EB library"
  spec.description   = "Ruby C extension for binding to EB library for working with dictionaries in EPWING format"
  spec.license       = "GPL-2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.extensions << 'ext/eb/extconf.rb'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.required_ruby_version = '>= 1.9.3'
end

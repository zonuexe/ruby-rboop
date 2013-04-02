# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rboop/version'

Gem::Specification.new do |spec|
  spec.name          = 'ruby-oop'
  spec.version       = Ruby::OOP::VERSION
  spec.authors       = ['USAMI Kenta']
  spec.email         = ['tadsan@zonu.me']
  spec.description   = "Object-Oriented Programming for Ruby"
  spec.summary       = 'rboop provides class-like function and Object oriented paradime.'
  spec.homepage      = 'http://dt.zonu.me/'
  spec.license       = 'GPLv3 or NYSL'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end

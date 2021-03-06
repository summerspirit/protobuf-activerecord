# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'protobuf/active_record/version'

Gem::Specification.new do |spec|
  spec.name          = "protobuf-activerecord"
  spec.version       = Protobuf::ActiveRecord::VERSION
  spec.authors       = ["Adam Hutchison"]
  spec.email         = ["liveh2o@gmail.com"]
  spec.homepage      = "http://github.com/liveh2o/protobuf-activerecord"
  spec.summary       = %q{Google Protocol Buffers integration for Active Record}
  spec.description   = %q{Provides the ability to create Active Record objects from Protocol Buffer messages and vice versa.}
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  ##
  # Dependencies
  #
  spec.add_dependency "activerecord", ">= 3.2.0"
  spec.add_dependency "activesupport", ">= 3.2.0"
  spec.add_dependency "heredity", ">= 0.1.1"
  spec.add_dependency "protobuf", ">= 2.2.0"

  ##
  # Development dependencies
  #
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-pride"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "timecop"
end

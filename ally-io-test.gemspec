# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ally/io/test/version'

Gem::Specification.new do |spec|
  spec.name          = "ally-io-test"
  spec.version       = Ally::Io::Test::VERSION
  spec.authors       = ["Chad Barraford"]
  spec.email         = ["cbarraford@gmail.com"]
  spec.description   = %q{An ally io plugin designed for testing other ally plugins}
  spec.summary       = %q{An ally io plugin to test other ally plugins}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ["lib"]

  spec.add_dependency 'ally'

  # development dependencies
  spec.add_development_dependency "bundler", "~> 1.3"
  %W( rake rspec rubocop ).each do |gem|
    spec.add_development_dependency gem
  end
end

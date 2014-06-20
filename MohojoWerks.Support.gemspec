# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'MohojoWerks.Support/version'

Gem::Specification.new do |spec|
  spec.name          = "MohojoWerks.Support"
  spec.version       = MohojoWerks::Support::VERSION
  spec.authors       = ["gangelo"]
  spec.email         = ["web.gma@gmail.com"]
  spec.summary       = %q{Mohojo Werks LLC support gem.}
  spec.description   = %q{Support gem used by Mohojo Werks LLC}
  spec.homepage      = "http://www.mohojo-werks.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '~> 2.0.0'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0'
  spec.add_development_dependency "rspec", '~> 3.0', '>= 3.0.0'
  spec.add_development_dependency "yard", "0.8.7.4"
  spec.add_development_dependency "redcarpet", '~> 3.1', '>= 3.1.0'
end

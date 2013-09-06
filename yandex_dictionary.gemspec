# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex_dictionary/version'

Gem::Specification.new do |spec|
  spec.name          = "yandex_dictionary"
  spec.version       = YandexDictionary::VERSION
  spec.authors       = ["Andrii Peliak"]
  spec.email         = ["vseprav@gmaul.com"]
  spec.description   = %q{Library for Yandex Dictionary API}
  spec.summary       = %q{Yandex Dictionary APIy}
  spec.homepage      = "https://github.com/vseprav/yandex_dictionary"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "httparty"
  spec.add_development_dependency 'json'
  spec.add_development_dependency 'rspec'
end

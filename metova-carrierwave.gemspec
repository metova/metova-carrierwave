# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metova/carrierwave/version'

Gem::Specification.new do |spec|
  spec.name          = 'metova-carrierwave'
  spec.version       = Metova::Carrierwave::VERSION
  spec.authors       = ['Logan Serman']
  spec.email         = ['logan.serman@metova.com']
  spec.summary       = %q[Configures Carrierwave to use S3 through ENV variables.]
  spec.homepage      = 'http://github.com/metova/metova-carrierwave'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'fog'
  spec.add_development_dependency 'fog-aws'
  spec.add_development_dependency 'rake'
end

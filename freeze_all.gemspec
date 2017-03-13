# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'freeze_all/version'

Gem::Specification.new do |spec|
  spec.name          = "freeze_all"
  spec.version       = FreezeAll::VERSION
  spec.authors       = ["Edmund Li"]
  spec.email         = ["edmund.xz.lee@gmail.com"]

  spec.summary       = 'Add a convenient `freeze_all` method to Array and Hash class for freezing all objects in it and the Array/Hash itself.'
  spec.homepage      = "https://github.com/EdmundLeex/freeze_all"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mythtvremote/version'

Gem::Specification.new do |spec|
  spec.name          = "mythtvremote"
  spec.version       = Mythtvremote::VERSION
  spec.authors       = ["Christophe Augello"]
  spec.email         = ["christophe@augello.be"]
  spec.description   = "Mythtv front end remote control socket bindings"
  spec.summary       = "Mythtv front end remote control socket bindings"
  spec.homepage      = "https://github.com/kartouch/mythtvremote"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

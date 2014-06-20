# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/forward/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-forward"
  spec.version       = Rack::Forward::VERSION
  spec.authors       = ["Lonre Wang"]
  spec.email         = ["me@wanglong.me"]
  spec.summary       = %q{Rack Middleware to proxy requests to a remote server. This is usefull for proxying AJAX request to remote services.}
  spec.description   = %q{Rack Middleware to proxy requests to a remote server. This is usefull for proxying AJAX request to remote services, thanks to @cwninja.}
  spec.homepage      = "https://github.com/lonre/rack-forward"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pronto/rails_schema/version'

Gem::Specification.new do |spec|
  spec.name          = "pronto-rails_schema"
  spec.version       = Pronto::RailsSchemaVersion::VERSION
  spec.authors       = ["Raimondas Valickas"]
  spec.email         = ["raimondas@vinted.com"]

  spec.summary       = %q{Pronto runner for detection of Rails schema changes.}
  spec.description   = %q{Detects migration files and checks for changes in
    schema.rb or structure.sql files}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'pronto', '~> 0.4.3'
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end

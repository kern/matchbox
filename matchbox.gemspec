# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'matchbox/version'

Gem::Specification.new do |s|
  s.name        = 'matchbox'
  s.version     = Matchbox::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alexander Kern']
  s.email       = ['alex@kernul.com']
  s.homepage    = 'https://github.com/CapnKernul/matchbox'
  s.summary     = %q{Use RSpec and Shoulda matcher in plain-old Test::Unit}
  s.description = %q{Adds Test::Unit assertions for RSpec and Shoulda matchers}
  
  s.rubyforge_project = 'matchbox'
  
  s.add_development_dependency 'test-unit'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
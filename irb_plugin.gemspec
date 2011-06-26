# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "irb_plugin/version"

Gem::Specification.new do |s|
  s.name        = "irb_plugin"
  s.version     = IrbPlugin::VERSION
  s.authors     = ["Chad Fowler"]
  s.email       = ["chad@chadfowler.com"]
  s.homepage    = ""
  s.summary     = %q{Trivial irb plugin loader}
  s.description = %q{Trivial irb plugin loader}

  s.rubyforge_project = "irb_plugin"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

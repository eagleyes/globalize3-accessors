# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "globalize3_accessors/version"

Gem::Specification.new do |s|
  s.name        = "globalize3_accessors"
  s.version     = Globalize3Accessors::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Guillaume Dupéré"]
  s.email       = ["eagleyes12@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{adds accessors to Globalize3 models"}
  s.description = %q{Tadds accessors to Globalize3 model}

  s.rubyforge_project = "globalize3_accessors"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

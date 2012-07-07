# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "months_caluculator/version"

Gem::Specification.new do |s|
  s.name        = "months_caluculator"
  s.version     = MonthsCaluculator::VERSION
  s.authors     = ["Sateesh Kambhampati"]
  s.email       = ["sateesh.k09@gmail.com"]
  s.homepage    = ""
  s.summary     = "Purpose is to caluculate exact number of months between two dates"
  s.description = "A simple gem to caluculate exact number of months"

  s.rubyforge_project = "months_caluculator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

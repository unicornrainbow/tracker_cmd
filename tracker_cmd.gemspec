# -*- encoding: utf-8 -*-
require File.expand_path("../lib/tracker_cmd/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "tracker_cmd"
  s.version     = TrackerCmd::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Blake Taylor']
  s.email       = ['btaylor@agoragames.com']
  s.homepage    = "http://rubygems.org/gems/tracker_cmd"
  s.summary     = "User centric command line tool for pivotal tracker."
  s.description = "Provides helpful functionlity for interactig with pivotal tracker from the command line."

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "tracker_cmd"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "httparty", ">= 0.6.1"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

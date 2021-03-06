# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'middleman-asset-http-prefix'
  s.version     = '1.0.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ryan Mark']
  s.email       = ['ryan@mrk.cc']
  s.homepage    = 'https://github.com/ryanmark/middleman-asset-http-prefix'
  s.summary     = 'Middleman extension for putting assets at a different http prefix'
  # s.description = %q{A longer description of your extension}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  # The version of middleman-core your extension depends on
  s.add_runtime_dependency('middleman-core', ['>= 4', '< 5'])
end

# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = 'rando'
  s.version     = '0.1.1'
  s.summary     = 'Random item generator'
  s.description = 'Random item generator'
  s.authors     = ['Donald Wu']
  s.email       = 'yeukfei02@gmail.com'
  s.files       = ['lib/rando.rb']
  s.homepage    =
    'https://rubygems.org/gems/rando'
  s.metadata = {
    'documentation_uri' => 'https://github.com/yeukfei02/rando',
    'source_code_uri' => 'https://github.com/yeukfei02/rando'
  }
  s.license = 'MIT'
  s.required_ruby_version = '>= 2.7.0'
  s.add_development_dependency 'reek', '~> 6.1'
  s.add_development_dependency 'rspec', '~> 3.11'
  s.add_development_dependency 'rubocop', '~> 1.30'
  s.add_development_dependency 'rubocop-rspec', '~> 2.11'
  s.add_development_dependency 'solargraph', '~> 0.45'
end

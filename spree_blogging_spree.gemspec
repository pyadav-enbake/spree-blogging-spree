Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_blogging_spree'
  s.version     = '0.2.1'
  s.summary     = 'BloggingSpree: A Spree blogging solution (Updated to Spree 0.70 and Rails 3.1)'
  #s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'

  s.authors             = ['jaymendoza (Jay Mendoza)','divineforest (Alexander Balashov)','sbeam (Sam Beam)']
  # s.email             = 'david@loudthinking.com'
  # s.homepage          = 'http://www.rubyonrails.org'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 1.0.0rc2')
  s.add_dependency('paperclip', '~> 2.5')
  s.add_dependency('is_taggable_rails3')
end

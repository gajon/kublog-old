# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "kublog/version"

Gem::Specification.new do |s|
  s.name        = "kublog"
  s.version     = Kublog::VERSION
  s.authors     = ["Adrian Cuadros"]
  s.email       = ["adrian@innku.com"]
  s.homepage    = "http://rutanet.com/blog"
  s.summary     = %q{Product Blog Engine, simple, social and fully integrated with your Users}
  s.description = %q{Rails Mountable Engine that sets up your Product Blog, share your posts on facebook, twitter and E-mail your users with your latest product news}

  s.rubyforge_project = "kublog"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # Runtime dependencies
  s.add_dependency "rails", '~>3.1.0.rc5'
  s.add_dependency 'sprockets', '2.0.0.beta.13' #FIXME: Remove me upon release of Rails 3.1 Final
  s.add_dependency "jquery-rails", '~>1.0.13'
  s.add_dependency 'coffee-script', '~>2.2.0'
  s.add_dependency "friendly_id", "~> 4.0.0.beta8"
  s.add_dependency "sanitize", '~>2.0.3'
  
  # This gems should stop being dependencies but optional with certain features
  s.add_dependency "rmagick", '~>2.13.1'
  s.add_dependency "carrierwave", '~>0.5.7'
  s.add_dependency 'liquid', '~>2.2.2'
  s.add_dependency 'twitter', '~>1.6.2'
  s.add_dependency 'fb_graph', '~>1.9.5'
  
  # Development dependencies
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "sqlite3"
  
end

# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tictactoe-game/version'

Gem::Specification.new do |gem|
  gem.name          = "tictactoe-game"
  gem.version       = Tictactoe::Game::VERSION
  gem.authors       = ["Ayo91"]
  gem.email         = ["ayoze.peraza@gmail.com"]
  gem.description   = %q{Juego del tres en ralla}
  gem.summary       = %q{----}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

require "bundler/gem_tasks"

require 'rspec/core/rake_task'
#para no tener que poner -Ilib
$:.unshift File.dirname(__FILE__) + 'lib'

#------------------------------------------------------------------------------- 
task :default => :spec

#------------------------------------------------------------------------------- 
desc "Ejecutar tests"
task :spec do
	sh "rspec spec/tictactoe_spec.rb --format documentation"
end

#------------------------------------------------------------------------------- 
desc "Ejecutar una partida del juego"
task :bin do
	sh "ruby -Ilib bin/game.rb"
end

#------------------------------------------------------------------------------- 
desc "Ejecutar test con formato html"
task :thtml do
	sh "rspec spec/tictactoe_spec.rb --format html > resultados.html"
end

#------------------------------------------------------------------------------- 
task :test do 
  sh "ruby -w -Ilib test/tc_tictactoe.rb"	
end

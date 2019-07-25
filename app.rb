require 'bundler'
Bundler.require

$:.unshift File.expand_path('./../lib/app', __FILE__)
require 'game'
require 'player'


 class Application < Game
   
 
  game1 = Game.new

  game1.perform
  

end






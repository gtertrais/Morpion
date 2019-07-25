require 'pry'

class Player
  attr_accessor :name

  def initialize (name)
    @name = name
  end


  def p1
    puts 'Player 1: Enter your first name:'
    print '>'
    name = gets.chomp.to_s
    player = Player.new(name)
    end

    def p2
      puts 'Player 2: Enter your first name:'
      print '>'
      name = gets.chomp.to_s
      player = Player.new(name)
      end

  
end
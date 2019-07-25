# frozen_string_literal: true

require 'pry'
require_relative 'player'
require_relative 'board'


class Game

  def p1
    puts 'Player 1: Enter your first name:'
    print '>'
    name = gets.chomp.to_s
    player1 = Player.new(name)
    end

  def p2
    puts 'Player 2: Enter your first name:'
    print '>'
    name = gets.chomp.to_s
    player2 = Player.new(name)
  end

  def greet(p1, p2)
    puts "Welcome #{p1.name} and #{p2.name} to the Morpion!"
  end



def show_table #display morpion 
  board1 = Board.new
  board1.table
end





  def perform
    greet(p1, p2)
    show_table
  end
end

game1 = Game.new

game1.perform

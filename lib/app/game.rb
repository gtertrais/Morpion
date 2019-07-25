# frozen_string_literal: true

require 'pry'
require_relative 'player'
require_relative 'board'


class Game < Player
  attr_accessor :board, :player1, :player2

  def initialize
    @board = Board.new
  end


  def enter_name(p1, p2)
    puts "Welcome #{p1.name} and #{p2.name} to the Morpion!"
  end


def show_table #display morpion 
  @board.table
end


def menu
  rows = []
  rows << ["1", "2", "3"]
  rows << :separator
  rows << ["4", "5", "6"]
  rows << :separator
  rows <<  ["7", "8", "9"]
  table = Terminal::Table.new :rows => rows
  puts table
end


def menu_choice_player1
  puts "Enter the case you want to cross (ex: a1, b3, c2, etc...)"
  choice = gets.chomp.to_i
  if @board.cases_array[choice-1].values.to_s == '[0]'
    @board.cases_array[choice-1] = {choice-1 => 1}
  else
    puts "no"
end
end

def menu_choice_player2
  puts "Enter the case you want to cross (ex: a1, b3, c2, etc...)"
  choice = gets.chomp.to_i
  if @board.cases_array[choice-1].values.to_s == '[0]'
    @board.cases_array[choice-1] = {choice-1 => 2}
  else
    puts "no"
end
end


def change_table
  @board.cases_array[0] = {0=>1}
end


def perform
  
  enter_name(p1, p2)
  show_table
  menu
  menu_choice_player1
  show_table
  menu_choice_player2
  show_table
end

game1 = Game.new
perform

end
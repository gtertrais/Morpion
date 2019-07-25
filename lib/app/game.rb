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
  puts "Player1, Your turn !"
  puts "Type the number"
  choice = gets.chomp.to_i
  if @board.cases_array[choice-1].values.to_s == '[0]'
    @board.cases_array[choice-1] = {choice-1 => 1}
  else
    puts "no"
end
end

def menu_choice_player2
  puts "Player2, Your turn !"
  puts "Type the number"
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
      count = 0
      enter_name(p1, p2)
      system 'clear'
      while @board.cases_array.length > count #&& win
      show_table
      menu
      menu_choice_player1
      system 'clear'
      count += 1
      show_table
      menu
     
      if @board.cases_array.length > count # && win
      menu_choice_player2
      show_table
      count += 1
      system 'clear'
      end
    end
  end
end




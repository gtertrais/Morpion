require 'pry'
require 'terminal-table'

class BoardCase
  attr_accessor  :cases_array


 def initialize #create 9 cases initialize position 0 to 8 and values to 0
    @cases_array = []
    9.times do |position|
      @cases_array << {position => 0}
    end
 end

 def x_or_o #print X O or nothing according to case value
  cell_array = []
  @cases_array.each do |cell|
    if cell.values.to_s == "[1]" #if player 1 play, diplay X
      cell_array << "X"
    elsif cell.values.to_s == "[2]" #if player 2 play, diplay O
      cell_array << "O"
    else
      cell_array << " " #if value = 0, blank space
    end
    end
    return cell_array
  end
end




require 'pry'
require 'terminal-table'

require_relative 'board_case'

class Board < BoardCase

  
 def table #display the cell_array from x_or_o method in a table using terminal-table gem
  rows = []
  rows << [" ","A", "B","C"]
  rows << :separator
  rows << ["1",x_or_o[0],x_or_o[1],x_or_o[2]]
  rows << :separator
  rows << ["2",x_or_o[3],x_or_o[4],x_or_o[5]]
  rows << :separator
  rows <<  ["3",x_or_o[6],x_or_o[7],x_or_o[8]]
  table = Terminal::Table.new :rows => rows
  
  puts table
  
  end
    
end


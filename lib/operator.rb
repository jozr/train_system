require 'table_butler'
require 'pry'

class Operator < Table_Butler

  attr_accessor:name, :id

  def add_station(station_name_input)
    Station.new({'name' => '#{station_name_input}'})
  end

  def add_line(line_name_input)
    Line.new({'name' => '#{line_name_input}'})
  end


end

require 'table_butler'
require 'pry'

class Rider < Table_Butler

  attr_accessor:name, :id, :lines

  def list_lines(station_id_input)
    results = DB.exec("SELECT * FROM stop WHERE station_id = (#{station_id_input});")
    lines = []
    results.each do |result|
      line_ids = result['line_id'].to_i
      lines << line_ids
    end
    lines
  end

  def list_stations(line_id_input)
    results = DB.exec("SELECT * FROM stop WHERE line_id = (#{line_id_input});")
    stations = []
    results.each do |result|
      station_ids = result['station_id'].to_i
      stations << station_ids
    end
    stations
  end
end



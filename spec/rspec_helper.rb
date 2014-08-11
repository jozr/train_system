require 'rspec'
require 'pg'
require 'line'
require 'operator'
require 'station'
require 'rider'
require 'stop'

DB = PG.connect({:dbname => 'train_fun_jozie_t'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec('DELETE FROM station *;')
    DB.exec('DELETE FROM rider *;')
    DB.exec("DELETE FROM line *;")
    DB.exec("DELETE FROM operator *;")
    DB.exec('DELETE FROM stop *;')
  end
end

def create_test_objects
    @test_station = Station.new({'name' => 'good'})
    @test_station.save
    @test_line = Line.new({'name' => 'green'})
    @test_line.save
    @test_stop = Stop.new({'station_id' => @test_station.id, 'line_id' => @test_line.id})
    @test_stop.save
    @test_operator = Operator.new({'name' => "Charles"})
    @test_operator.save
    @test_rider = Rider.new({'name' => 'Wilson'})
    @test_rider.save
end

require 'rspec_helper'
require 'rider'
require 'table_butler'
require 'pry'

describe Rider do

  before do
    create_test_objects
  end

  it "initializes with an ID and name" do
    expect(@test_rider).to be_an_instance_of Rider
  end

  it 'allows you to return all riders' do
    Rider.all.should eq [@test_rider]
  end

  it "allows the rider to list all the lines for a single station" do
    expect(@test_rider.list_lines(@test_station.id)).to eq [@test_line.id]
  end

  it "allows the rider to list all the stations for a single line" do
    expect(@test_rider.list_stations(@test_line.id)).to eq [@test_station.id]
  end

end

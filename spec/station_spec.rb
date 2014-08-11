require 'rspec_helper'
require 'station'
require 'table_butler'
require 'pry'

describe Station do

  before do
    create_test_objects
  end

  it "initializes with an ID and name" do
    expect(@test_station).to be_an_instance_of Station
  end

  it 'allows you to return all stations' do
    Station.all.should eq [@test_station]
  end
end

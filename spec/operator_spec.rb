require 'rspec_helper'
require 'operator'
require 'table_butler'
require 'pry'

describe Operator do

  before do
    create_test_objects
  end

  it "initializes with an ID and name" do
    expect(@test_operator).to be_an_instance_of Operator
  end

  it 'allows you to return all operators' do
    Operator.all.should eq [@test_operator]
  end

  it 'allows the operator to create a station' do
    expect(@test_operator.add_station("Foo Station")).to be_an_instance_of Station
  end

  it 'allows the operator to create a line' do
    expect(@test_operator.add_line("Purple")).to be_an_instance_of Line
  end
end

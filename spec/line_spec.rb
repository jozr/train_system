require 'rspec_helper'
require 'line'
require 'table_butler'
require 'pry'

describe Line do

  before do
    create_test_objects
  end

  it "initializes with an ID and name" do
    expect(@test_line).to be_an_instance_of Line
  end

  it 'allows you to return all lines' do
    Line.all.should eq [@test_line]
  end
end

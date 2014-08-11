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
end

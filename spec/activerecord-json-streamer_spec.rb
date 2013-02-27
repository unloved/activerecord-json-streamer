require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe ActiveRecord::Base do

  before do
    1.upto(10) do |n|
      User.create({:name => "user#{n}", :email=>"email#{n}@test.com"})
    end
    @stream = StringIO.new
  end

  after do
    User.destroy_all
  end

  it "simply gives right json" do
    User.to_json_stream(@stream)
    @stream.string.should eq User.all.map(&:to_json).join('')
  end

  it "gives json with custom params" do
    User.to_json_stream(@stream, {:only=>'name'})
    @stream.string.should eq User.all.map{|el| el.to_json(:only=>:name)}.join('')
  end

end

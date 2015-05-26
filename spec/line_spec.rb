require "spec_helper"

describe 'Line' do

  it "should declare a line object with 2 points" do
    point1 = Point.new(1,1)
    point2 = Point.new(2,2)
    line = Line.new(point1, point2)
    expect(line.start_point).to eq(point1)
    expect(line.end_point).to eq(point2)
  end
end

describe 'Length' do
  it "should calculate the length correctly" do
    point1 = Point.new(1,1)
    point2 = Point.new(4,5)
    point3 = Point.new(2,2)
    point4 = Point.new(26,9)
    line1 = Line.new(point1,point2)
    expect(line1.length).to eq(5.0)
    line2 = Line.new(point3, point4)
    expect(line2.length).to eq(25.0)
  end
end

describe 'equality' do
  it "should be reflexive" do
    line = Line.new(Point.new(1,1), Point.new(2,2))
    expect(line.equal_to?(line)).to eq(true)
  end

  it "should be symmetric" do
    point1 = Point.new(1,1)
    point2 = Point.new(2,2)
    line1 = Line.new(point1, point2)
    line2 = Line.new(point2, point1)
    expect(line1.equal_to?(line2)).to eq(true)
  end
end

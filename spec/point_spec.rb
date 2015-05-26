require "spec_helper"

describe 'Point' do
  it "should declare a point object" do
    point = Point.new(1,3)
    expect(point.x).to eq(1)
    expect(point.y).to eq(3)
  end
end

describe "Distance" do
  it "should compute the distance between two points" do
    point1 = Point.new(1,1)
    point2 = Point.new(4,5)
    expect(Point.distance_between(point1, point2)).to eq(5.0)
  end
end

describe "Equality" do
  it "should be reflexive" do
    point1 = Point.new(1,1)
    expect(point1.equal_to?(point1)).to eq(true)
  end

  it "should be symmetric" do
    point1 = Point.new(1,1)
    point2 = Point.new(1,1)
    expect(point1.equal_to?(point2)).to eq(true)
    expect(point2.equal_to?(point1)).to eq(true)
  end
end

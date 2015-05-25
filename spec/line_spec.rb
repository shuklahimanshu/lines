require "spec_helper"

describe 'Line' do

  it "should declare a line object with 2 points" do
    line = Line.new([1,1],[2,2])
    expect(line.start_point).to eq([1,1])
    expect(line.end_point).to eq([2,2])
  end

  it "should calculate the length correctly" do
    line1 = Line.new([1,1], [4,5])
    expect(line1.length).to eq(5.0)
    line2 = Line.new([2,2], [26,9])
    expect(line2.length).to eq(25.0)
  end
end

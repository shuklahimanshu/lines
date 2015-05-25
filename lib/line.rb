class Line
  attr_accessor :start_point, :end_point

  def initialize start_point, end_point
    @start_point = start_point
    @end_point = end_point
  end

  def length
    diff_x = @start_point.shift - @end_point.shift
    diff_y = @start_point.shift - @end_point.shift
    return Math.hypot(diff_x, diff_y)
  end
end

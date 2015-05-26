class Line
  attr_accessor :start_point, :end_point
  def initialize start_point, end_point
    @start_point = start_point
    @end_point = end_point
  end

  def length
    diff_x = @start_point.x - @end_point.x
    diff_y = @start_point.y - @end_point.y
    return Math.hypot(diff_x, diff_y)
  end

  def equal_to? line
    if (@start_point.equal_to? line.start_point) &&
        (@end_point.equal_to? line.end_point )
      return true

    elsif(@end_point.equal_to? line.start_point) &&
          (@start_point.equal_to? line.end_point)
      return true

    else
      return false
    end
  end

end

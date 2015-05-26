class Point
  attr_accessor :x, :y

  def initialize x, y
    @x = x
    @y = y
  end

  def self.distance_between(point1, point2)
    return Math.sqrt( (point2.y - point1.y)**2 +
                      (point2.x - point1.x)**2)
  end

  def equal_to? point
    if(@x==point.x && @y==point.y)
      return true
    else 
      return false
    end
  end

end

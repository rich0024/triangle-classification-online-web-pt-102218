class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    valid?
    if (a == b) && (b==c) && (c==a)
      :equilateral
    elsif (a == b) || (b==c) || (c==a)
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    triangle = [(a + b > c),
                (a + c > b),
                (b + c > a)]
    [a, b, c].each do |side| triangle << false if side <= 0
    end
    raise TriangleError if triangle.include?(false)
  end

  class TriangleError < StandardError
  end
  # write code here
end

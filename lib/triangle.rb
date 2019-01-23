class Triangle
  # write code here
attr_accessor :side_A, :side_B, :side_C
  
  def initialization(side_A, side_B, side_C)
    @side_A = side_A
    @side_B = side_B
    @side_C = side_C
    @sides = []
  end

  def kind
    valid?
    if (side_A == side_B) && (side_B == side_C) && (side_C == side_A)
      :equilateral
    elsif (side_A == side_B) || (side_B == side_C) || (side_C == side_A)
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    @sides << side_A
    @sides << side_B
    @sides << side_C
  real = [(side_A + side_B > side_C),
          (side_A + side_C > side_B),
          (side_B + side_C > side_A)]
          @sides.each { |side| real << false if side <= 0 }
  raise TriangleError if real.include?(false)
  end


  class TriangleError < StandardError
  # triangle error code
  end

end

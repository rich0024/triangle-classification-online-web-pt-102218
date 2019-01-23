class Triangle

  attr_accessor :side_A, :side_B, :side_C

    def initialization(side_A, side_B, side_C)
      @side_A = side_A
      @side_B = side_B
      @side_C = side_C
    end


  def kind
    valid
    if (side_A == side_B) && (side_B == side_C) && (side_C == side_A)
      :equilateral
    elsif (side_A == side_B) || (side_B == side_C) || (side_C == side_A)
      :isosceles
    else
      :scalene
    end
  end

  def valid
    triangle = [(side_A + side_B > side_C), (side_A + side_C > side_B), (side_B + side_C > side_A)]
          [side_A, side_B, side_C].each do |side| triangle << false if side <= 0
          end
          raise TriangleError if triangle.include?(false)
      end

  class TriangleError < StandardError
  end
  # write code here
end

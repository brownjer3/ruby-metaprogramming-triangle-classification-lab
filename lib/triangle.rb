class Triangle

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    #returns, as a symbol, its type
    if @side1+@side2>@side3 && @side2+@side3>@side1 && @side3+@side1>@side2
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1==@side2 || @side2==@side3 || @side1==@side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  # Custom Errors section
  class TriangleError < StandardError
    def message
      "That's not a valid triangle!!"
    end
  end

end

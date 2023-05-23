class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if ((@length1 > 0 && @length2 > 0 && @length3 > 0) && ((@length1 + @length2) > @length3 && (@length1 + @length3) > @length2) && ((@length3 + @length2) > @length1))
      if (@length1 == @length2 && @length1 == @length3)
        return :equilateral
      elsif ((@length1 == @length2) || (@length2 == @length3) || (@length1 == @length3))
        return :isosceles
      elsif (@length1 != @length2 && @length1 != @length3 && @length2 != @length3)
        return :scalene
      else
        puts "Hey"
      end
    else
      begin
        raise TriangleError
        # rescue TriangleError => error
        #   puts error.message
      end
    end
  end

  class TriangleError < StandardError
    # def message
    # "Error identified"
    # end
  end
end
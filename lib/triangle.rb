class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize (a, b, c)
     @a = a
     @b = b
     @c = c
  end

  def kind
    check_sides(@a,@b, @c)
    if (@a ==@b &&@b == @c)
      :equilateral
    elsif (@a == @c || @a ==@b ||@b == @c)
      :isosceles
    else
      :scalene
    end
  end

   def check_sides(a, b, c)
     if (a + b > c  &&  a + c > b  &&  c + b > a  &&  a > 0  &&  b > 0  &&  c > 0)
      return true
     else
        raise TriangleError
     end
   end

  class TriangleError < StandardError
    def message
      "This is not a valid triangle"
    end
  end

end

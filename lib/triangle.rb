class Triangle

  attr_accessor :s1, :s2, :s3 

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3

    if s1 >= (s2 + s3) || s2 >= (s1 + s3) || s3 >= (s1 + s2)
      raise TriangleError
    end

    if s1 <= 0 || s2 <= 0 || s3 <= 0
      raise TriangleError
    end

    if s1 == nil || s2 == nil || s3 == nil
      raise TriangleError
    end
  end

  def kind
    if @s1 == @s2 && @s1 == @s3
      return :equilateral
    elsif @s1 == @s2 && @s2 != @s3 
      return :isosceles
    elsif @s1 == @s3 && @s2 != @s1
      return :isosceles
    elsif @s3 == @s2 && @s2 != @s1
      return :isosceles
    else
      return :scalene
    end
  end



  class TriangleError < StandardError
    def message
      "You must give the triangle method a valid triangle or face the consequences!"
    end
  end
end


  #   if @length1 + @length2 < @length3 || @length1 + @length3 < @length2 || @length2 + @length3 < @length1 || @length1 <= 0 || @length2 <= 0 || @length3 <= 0 
  #     begin
  #       raise TriangleError
  #     rescue TriangleError => error
  #       puts error.message
  #     end
  #   end
  # end
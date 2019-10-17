require "pry" 
class Triangle  
  
  attr_accessor :side_a, :side_b, :side_c, :type 
  
  def initialize(side_a, side_b,side_c) 
    @side_a = side_a 
    @side_b = side_b
    @side_c = side_c 
    
    @type = self.kind 
  end 
  
  def kind 
    # triangles with sides that are 0 or negative are invalid 
    if @side_a <= 0 || @side_b <= 0 || @side_c <= 0 
      raise TriangleError 
    elsif @side_a == @side_b && @side_b == @side_c 
      return :equilateral 
    elsif @side_a == @side_b || @side_a == @side_c || @side_b == @side_c 
      return :isosceles 
    elsif @side_a != @side_b && @side_b != @side_c && @side_a != @side_c
      return :scalene 
    end 
  end 
  
  class TriangleError < StandardError
    def message 
      "Invalid Triangle"
    end 
  end 
  
end

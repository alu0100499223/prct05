# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
  attr_reader :num, :den
  
  def initialize (num, den)
    @num, @den = num, den
  end
  
  def to_s
    "#{@num}/#{@den}"
  end
  
  def +(other)#suma
    num = (@num * other.den) + (@den * other.num)
    den = @den * other.den
    su = Fraccion.new(num, den)
    su
  end
  
  def -(other)#resta
    num = (@num * other.den) - (@den * other.num)
    den = @den * other.den
    re = Fraccion.new(num, den)
    re
  end
  
  def *(other)#multiplicación
    num = (@num * other.den) * (@den * other.num)
    den = @den * other.den
    mu = Fraccion.new(num, den)
    mu
  end
  
  def div(other)#división
    num = (@num * other.den) div (@den * other.num)
    den = @den * other.den
    di = Fraccion.new(num, den)
    di
  end
  
end

#r1 = Fraccion.new(1, 2)
#puts "r1 = #{r1}"

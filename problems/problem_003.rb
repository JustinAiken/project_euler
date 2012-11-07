module Problem003

  def self.description 
%*The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?*
  end

  def self.answer
    factors(600851475143).max
  end

  def self.factors num
    return [] if num == 1
    factor = (2..num).find {|lil_num| num % lil_num == 0} 
    [factor] + factors(num / factor) 
  end
end
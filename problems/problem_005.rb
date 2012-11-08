module Problem005

  def self.description 
%*2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?*
  end

  def self.answer
    loop_nums
  end

  def self.loop_nums 
    (2520..9999999999).step(10) do |n|
      return n if divisible? n
    end
  end

  def self.divisible? num 
    (1..20).each do |small_int|
      next if num % small_int == 0
      return false
    end

    true
  end
end
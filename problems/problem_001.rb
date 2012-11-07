module Problem001

  def self.description 
    %*If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
    Find the sum of all the multiples of 3 or 5 below 1000.*
  end

  def self.answer
    sum = 0 

    (1...1000).each do |n|
      sum += n if is_multiple(n, 3) || is_multiple(n,5)
    end

    sum 
  end

  def self.is_multiple(bignum, lilnum)
    return true if bignum % lilnum == 0
  end
end
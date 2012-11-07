module Problem004

  def self.description 
%*A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
Find the largest palindrome made from the product of two 3-digit numbers.*
  end

  def self.answer
    generate_products(999).max 
  end

  def self.generate_products num 

    products = []

    (1..num).each do |a|
      (1..num).each { |b| products.push  a * b  if is_palindrome? a * b } 
    end

    return products
  end

  def self.is_palindrome? num
    num.to_s == num.to_s.reverse
  end 
end
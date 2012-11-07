Dir[File.dirname(__FILE__) + '/problems/*.rb'].each {|file| require file }

def solve_problem(num)
  problem = Kernel.const_get("Problem#{num}")

  puts problem.description

  time    = Time.now
  puts "Answer: #{problem.answer}"
  time    = Time.now - time

  puts "Took #{time.to_i} seconds to figure that out"
end

solve_problem(ARGV[0])
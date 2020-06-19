def recursive_fib(n)
    n < 3 ? n : recursive_fib(n -1) + recursive_fib(n - 2)
end

def iterative_fib(num)
    x = 1
    y = 0

    num.times do
        temp = x
        x = x + y
        y = temp
    end

    return x
end

require 'benchmark'
num = 35
puts "Recursive result is #{recursive_fib(num)}"
puts "Iterative result is #{iterative_fib(num)}"
Benchmark.bm do |x|
    x.report("recursive_fib") { recursive_fib(num) }
    x.report("iterative_fib") { iterative_fib(num) }
end


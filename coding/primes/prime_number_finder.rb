# can be ran as a ruby script using `ruby prime_number_finder.rb`
# the Int on line 58 sets the number of seconds the script runs for.

class PrimeNumFinder
  def initialize(runtime)
    @runtime = runtime
    @largest_prime = nil
    @stop_signal = false
    @primes = []
  end

  def is_prime?(number)
    return false if number < 2
    @primes.each do |prime|
      break if prime * prime > number
      return false if number % prime == 0
    end
    true
  end

  def find_primes
    current_number = 0
    while !@stop_signal
      if is_prime?(current_number)
        @largest_prime = current_number
        @primes << current_number
      end
      current_number += 1
    end
  end

  def track_time
    sleep @runtime
    @stop_signal = true
  end

  def run
    start_time = Time.now

    timer_thread = Thread.new { track_time }
    prime_thread = Thread.new { find_primes }

    timer_thread.join
    prime_thread.join

    elapsed_time = Time.now - start_time
    puts "Elapsed time: #{elapsed_time.round(3)} seconds"

    puts "Largest prime found: #{@largest_prime}"
    nil
  end
end

def find_prime_number(seconds)
  PrimeNumFinder.new(seconds).run
end

find_prime_number(5)

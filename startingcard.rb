puts "We're going to find out how likely it is"
puts "that you start with at least one of a certain card"
puts "in a game of Pokemon."

print "How many copies do you play of the card you want to start with?"
starter = $stdin.gets.chomp.to_f

def factorial(n)
  n == 0 ? 1 : n*factorial(n-1)
end

def n_choose_k(n, k)
  factorial(n) / (factorial(k) * factorial(n - k))
end

x = 60.0 - starter

print (1.0 - (n_choose_k(x, 7.0)/n_choose_k(60.0, 7.0)))

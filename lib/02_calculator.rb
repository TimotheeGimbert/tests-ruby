def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b
end

def sum(ary)
  sum = 0
  ary.map{|i| sum += i}
  return sum
end

def multiply(a,b)
  return a*b
end

def power(a,b)
  return a ** b
end

def factorial(n)
  n == 0 ? 1 : (1..n).inject(:*)
end

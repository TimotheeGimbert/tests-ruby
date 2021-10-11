def echo(str)
  return str
end

def shout(str)
  return str.upcase
end

def repeat(str, n = 2)
  return Array.new(n, str).join(' ')
end

def start_of_word(str, n)
  str
      .split('')
      .reject {|c| str.index(c) >= n}
      .join
end

def first_word(str)
  str.split.shift
end

def titleize(str)
  str.capitalize.split.map{|w| w.length >3 ? w.capitalize : w}.join(' ')
end
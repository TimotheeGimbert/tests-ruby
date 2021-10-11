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
      .split('') # splits the string into array of chars
      .reject {|c| str.index(c) >= n} # takes off the array all chars from the given position n
      .join # joins back the array as a concatenated string
end

def first_word(str)
  str
    .split # splits the given string into an array of words
    .shift # returns the first element of the array
end

def titleize(str)
  str
    .capitalize # assures a capital at the beginning of the sentence
    .split # splits the string into an array of words
    .map {|w| w.length >3 ? w.capitalize : w} # capitalizes words greater than 3 chars
    .join(' ') # joins back the modified array as a space-separated string
end
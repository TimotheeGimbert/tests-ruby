def translate(str)
  if get_nb_words(str) == 1 # only one word in the string
    translate_word(str) # the word is translated
  else # several words in the string
    str
      .split # creates an array with each word of the string
      .map {|word| word = translate_word(word)} # each word of the string is translated
      .join(' ') # the array of words is joined back as a string space-separated
  end
end

def translate_word(word) # applies the rules to a single word
  if is_voyel?(word[0])
    add_ay(word)
  else
    cons = count_consonants(word)
    add_ay(rotate_word(word, cons))
  end
end

def count_consonants(word)
  if !is_voyel?(word[0]) && !is_voyel?(word[1]) && !is_voyel?(word[2])
    return 3
  elsif !is_voyel?(word[0]) && !is_voyel?(word[1])
    return 2
  elsif !is_voyel?(word[0])
    return 1
  end
end

def is_voyel?(char) # takes a character and returns true if it's a voyel, false if it's a consonant
  "aeiouy".include?(char)
end

def get_nb_words(str)
  str.split.length
end

def add_ay(word)
  word += "ay"
end

def rotate_word(word, n=1)
  if (word[0]=="q" && word[1]=="u") || (word[1]=="q" && word[2]=="u") || (word[2]=="q" && word[3]=="u")
    n += 1
  end
  word
      .split('')
      .rotate(n)
      .join
end



def translate(str)
  if get_nb_words(str) == 1 # test if string has a single word
    translate_word(str) # applies transformation to the word
  else # several words string
    str
      .split # creates array of words
      .map {|word| word = translate_word(word)} # applies transformation to each word
      .join(' ') # array is joined back as a space-separated string 
  end
end

def translate_word(word)
  if is_voyel?(word[0]) # test if first char is a voyel
    add_ay(word) # adds "ay"
  else
    cons = count_consonants(word) # nb of following consonants in the word
    cons_moved = rotate_word(word, cons) # moves the consonants 
    add_ay(cons_moved) # adds "ay"
  end
end

def count_consonants(word)
  if triple_cons?(word) then return 3
  elsif double_cons?(word) then return 2
  else return 1
  end
end

def double_cons?(word) # returns true if the first two chars of a word are consonants
  !is_voyel?(word[0]) && !is_voyel?(word[1])
end

def triple_cons?(word) # returns true if the first three chars of a word are consonants
  !is_voyel?(word[0]) && !is_voyel?(word[1]) && !is_voyel?(word[2])
end

def is_voyel?(char) # returns true if a character is a voyel, false for a consonant
  "aeiouy".include?(char.downcase)
end

def get_nb_words(str)
  str.split.length # get the length of the array of a string splitted by default space
end

def add_ay(word)
  word += "ay" # takes a word and adds "ay" at the end
end

def rotate_word(word, n=1)
  # Exception : we deal with "qu"
  if (word[0]=="q" && word[1]=="u") || (word[1]=="q" && word[2]=="u") || (word[2]=="q" && word[3]=="u")
    n += 1
  end
  # Then normal case :
  word
      .split('') # splits a word in an array of its chars
      .rotate(n) # rotate the array n times
      .join # joins back the array to a concatenated string
end



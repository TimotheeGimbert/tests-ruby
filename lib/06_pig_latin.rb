def translate(str)
  str
      .split # [str] each word separated by space put into new array
      .map {|word| 
        if word[0].casecmp("aeiouy") == -1 
          word+="ay" 
        elsif word[0].casecmp("aeiouy") == 1 && word[1].casecmp("aeiouy") == 1
          word = word.split('').rotate(2).join + "ay"
        elsif word[0].casecmp("aeiouy") == 1
          word = word.reverse + "ay"
        end
        }
      .join(' ')
end
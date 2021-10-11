def translate(str)
  voyels = "aeiouy"
  if str[0].casecmp(voyels) == -1 
    str += "ay" 
  else
    str = str.reverse + "ay"
  end
end
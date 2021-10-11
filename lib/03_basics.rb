def who_is_bigger(a,b,c)
  [a, b, c].each{|i| # for each element given, check that no nil exists
    if i == nil
      return "nil detected"
    end
  }
  if a > b && a > c then return "a is bigger"
    elsif b > a && b > c then return "b is bigger"
    elsif c > a && c > b then return "c is bigger"
  end
end

def reverse_upcase_noLTA(str)
  str
    .upcase # upcases the whole string
    .delete("LTA") # deletes all chars existing in the given str "LTA"
    .reverse # reverses the whole string
end

def array_42(ary)
  ary.count(42) > 0 ? true : false # returns true if the value 42 exist in the given array
end

def magic_array(ary)
  ary
    .flatten # removes any arrays of arrays of arrays ...
    .uniq # removes any clones
    .map {|i| i*= 2} # multiply every element by 2
    .reject {|i| i%3==0} # get rid of multiples of 3
    .sort # arranges the array by value
end
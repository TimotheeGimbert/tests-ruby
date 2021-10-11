def who_is_bigger(a,b,c)
  [a, b, c].each{|i| 
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
  str.upcase.delete("LTA").reverse
end

def array_42(ary)
  ary.count(42) > 0 ? true : false
end

def magic_array(ary)
  ary.flatten.uniq.map {|i| i*= 2}.reject {|i| i%3==0}.sort
end
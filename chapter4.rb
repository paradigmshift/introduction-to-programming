def s_to_up(string)
  if string.length >= 10 then string = string.upcase
  end
  return string
end

def x_between (x)
  answer = case
           when x <= 50
             "between 0 and 50"
           when x > 50 && x <= 100
             "between 51 and 100"
           else
             "greater than 100"
           end
  return answer
end

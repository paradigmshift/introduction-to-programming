family = { uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "susan"]}

family.select { |k,v| k == :sisters || k == :brothers }.values().flatten()

dictionary1 = { 1 => 1, 2 => 2, 3 => 3}

dictionary2 = { 4 => 4, 5 => 5, 6 => 6}

#non-destructive
dictionary1.merge(dictionary2)
puts dictionary1 #remains as above

#destructive
dictionary1.merge!(dictionary2)
puts dictionary2 #new hash

a_hash = {name: "mo", age: 32, weight: 75, height:180}

a_hash.keys().each do |k|
  puts "#{k}"
end

a_hash.values().each do |v|
  puts "#{v}"
end

a_hash.each do |k, v|
  puts "#{k} #{a_hash[k]}"
end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

def has_val(hash, val)
  hash.select { |k, v| v == val }
end

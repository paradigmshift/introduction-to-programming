arr = [1,2,3,4,5,6,7,8,9,10]

arr.each { |x| puts x }

arr.each { |x| if x > 5 then puts x end }

new_arr = arr.select { |x|  x % 2 != 0 }

arr.push(11).unshift(0)

arr.pop()
arr.push(3)
arr.uniq!

h = {a:1, b:2, c:3, d:4}
h[:b]
h[:e] = 5
h.delete_if { |k, v| v < 3.5 }

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# this assumes that there is no one with the same name
contact_data.each do |entry|
  pattern = Regexp.new(entry[0].split("@")[0]) # take the first name by taking everything before the '@' in the email field
  contacts[contacts.select { |k, v| pattern.match(k.downcase()) }.keys()[0]] = entry # select the KV pair that matches the first name, retrieve the full name with keys()[0], and add the entry to the KV pair
end

contacts["Joe Smith"][0]

contacts["Sally Johnson"][2]

contact_data.each do |entry|
  pattern = Regexp.new(entry[0].split("@")[0])
  contacts[contacts.select { |k, v| pattern.match(k.downcase()) }.keys()[0]] = {email:entry[0], address:entry[1], phone:entry[2]}
end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |x| x.start_with? "s" }
arr.delete_if { |x| /w{1}|s{1}/ =~ x[0] }

a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']

b = a.map { |x| x.split() }.flatten()


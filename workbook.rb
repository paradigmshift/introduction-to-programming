#Quiz 1
advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!(/important/, "urgent")

10 < 42 && 42 < 100

famous_words = "and seven years ago..."

"Four score " + famous_words
famous_words.prepend("Four score ")

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.assoc("Barney")

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

Hash[flintstones.each_with_index.map { |obj, idx| [obj, idx] }]

#Quiz 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key? "Spot"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values().reduce(:+)

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |k, v| v >= 100 }

munsters_description = "The Munsters are creepy in a good way."

munsters_description.capitalize
munsters_description.upcase().split("").each { |letter| if /M|T/ =~ letter then letter.replace(letter.downcase())end }.join("")
munsters_description.downcase()
munsters_description.upcase()

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

additional_ages.each { |k, v| ages[k] = v }

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values().min

advice = "Few things in life are as important as house training your pet dinosaur."

/Dino/ =~ advice

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index { |name, idx| if /Be/ =~ name then puts idx end }

flintstones.map! { |name| name.slice(0, 3) }

#Quiz 3
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(["Dino", "Hoppy"])

advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice(0, /house/ =~ advice)

statement = "The Flintstones Rock!"
statement.count("t")

title = "Flintstone Family Members"

" "*((40 - title.length())/2) + title

# Quiz 1
10.times { |x| puts " "*x + "The Flintstones Rock!"}

statement = "The Flintstones Rock"
frequency = {}
statement.split("").each { |letter| if frequency[letter] then frequency[letter] += 1 else frequency[letter] = 1 end }

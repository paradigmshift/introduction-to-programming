def check_pattern(str, pattern)
  if /#{pattern}/.match(str.downcase())
    puts str
  end
end

word_list = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

word_list.each { |word| check_pattern(word, "lab") }

def execute (&block)
  block.call
end

execute { puts "Hello from inside the execute method!"}

while true do
  puts "Again?"
  answer = gets.chomp
  if answer == "STOP"
    break
  end
end

arr = ['john', 'joe', 'amy', 'kino']

arr.each_with_index do |name, index| 
  puts "#{index+1}. #{name}"
end

def count_to_zero(start)
  puts start
  if start > 0 then count_to_zero(start-1) end
end

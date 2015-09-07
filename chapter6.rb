arr = [1,3,5,7,9,11]
number = 3

def check_arr(array, number)
  array.include?(number)
end

names = ['bob', 'joe', 'susan', 'margaret']

names[names.index("margaret")] = "jody"

arr1 = [1,2,3,4,5]

arr2 = arr1.map { |i| i + 2 }

p arr1
p arr2

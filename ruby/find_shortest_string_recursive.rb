def find_shortest_string_recursive(arr, shortest=nil)
  if shortest == nil then shortest = arr[0] end
  shortest = arr[0].length < shortest.length ? arr[0] : shortest
  return shortest if arr.length == 1
  find_shortest_string_recursive(arr[1..-1], shortest)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string_recursive(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string_recursive(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string_recursive(['flower', 'juniper', 'lily', 'dandelion'])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file



# And a written explanation of your solution

find_shortest_string_recursive(['flower', 'juniper', 'lily', 'dandelion'])
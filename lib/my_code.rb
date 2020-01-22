# Your Code Here
def map(array)
  modified_array = []
  
  for element in array do
    modified_array << yield(element)
  end
  
  return modified_array
end

# p map([1, 2, 3, -9]){|n| n * -1}

def reduce(array, value = nil)
  if value
    accumulator = value
    i = 0
  elsif !value
    accumulator = array[0]
    i = 1
  end
  
  while i < array.length do
    element = array[i]
    accumulator = yield(accumulator, element)
    i += 1
  end
  
  return accumulator
end

# source_array = [1,2,3]
# starting_point = 100
# p reduce(source_array){|memo, n| memo + n} #=> 6

  # it "returns true when a truthy value is present" do
source_array = [ false, nil, nil, nil, true]
reduce(source_array){|memo, n| p (memo || n)}
  # end
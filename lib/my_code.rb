# Your Code Here
def map(array)
  new_array = [ ]
  n = 0
  
  while n < array.length do
    new_array.push << yield(array[n])
    n += 1
  end
  
  return new_array
end

def reduce(array, starting_point = nil)
  
  if starting_point 
    n = 0
    sum = starting_point
  else
    n = 1
    sum = array[0]
  end
  
  while n < array.length do 
    sum = yield(sum, array[n])
    n += 1
  end
  
  return sum
end
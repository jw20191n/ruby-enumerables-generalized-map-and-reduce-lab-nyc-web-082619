# Your Code Here
def map(array)
  new_array = [ ]
  n = 0
  
  while n < array.length do
    new_array.push << yield(array[n])
    n += 1
  end
  
  new_array
end

def reduce(array, starting_point = nil)
  n = 0
  
  if starting_point 
    sum = starting_point
  else
    sum = array[0]
  end
  
  while n < array.length do 
    sum = yield(sum, array[n])
    n += 1
  end
  
  sum
end
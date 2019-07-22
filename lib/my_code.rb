def map(array)
  new_array = []
  for i in array
    yield (i)
    new_array.append(yield (i))
  end
  return new_array
end

def reduce(source_array, starting_point=0)
  new = starting_point
  i = 0
  while i < source_array.length do
    n= source_array[i]
    new = yield( new, n)
    i += 1
  end
  return new
end
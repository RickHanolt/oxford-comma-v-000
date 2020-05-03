def oxford_comma(array)
  if array.size == 1
    array
  elsif array.size == 2
    "#{array[0]} and #{array[1]}"
  end
end

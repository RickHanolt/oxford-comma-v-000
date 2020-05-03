def oxford_comma(array)
  if array.size == 1
    array[0]
  elsif array.size == 2
    "#{array[0]} and #{array[1]}"
  elsif array.size == 3
    "#{array[0]}, #{array[1]}, and #{array[2]}"
  else
    count = -1
    oxford_comma = ""
    while count < (array.size - 1)
      count += 1
      oxford_comma == oxford_comma + array[count] + ","
    end
    oxford_comma
  end
end

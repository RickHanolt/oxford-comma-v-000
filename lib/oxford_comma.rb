require 'pry'

def more_than_three(array)
  count = 0
  oxford_comma_string = ""
  while count < (array.size - 1)
    oxford_comma_string = oxford_comma_string + array[count] + ", "
    if count == (array.size - 2)
      return oxford_comma_string
    end
    count += 1
  end
end

def oxford_comma(array)
  if array.size == 1
    array[0]
  elsif array.size == 2
    "#{array[0]} and #{array[1]}"
  elsif array.size == 3
    "#{array[0]}, #{array[1]}, and #{array[2]}"
  else
    more_than_three(array)
    "#{more_than_three(array)} and #{array[-1]}"
  end
end

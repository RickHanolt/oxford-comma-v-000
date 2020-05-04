# Oxford Comma List Formatter

## Objectives

1. Iterate over array elements.
2. Use various methods to manipulate arrays and strings
3. Convert data types

## Converting Types

In Ruby, there are a few methods available to us for converting data types. For example, it is possible to convert a string to an array, an array into a string, or a range into an array, among other conversions. You can learn more about conversion [here](http://www.dotnetperls.com/convert-ruby), but for now we'll just take a look at a few.

#### String to Array

The `.split` method will convert a string into an array. The `.split` method takes an argument of the character in the string on which you want to split it. For example, if we have a string that contains a comma-separated list of items:

`"hippo,giraffe,monkey,horse"`

We can call `.split` on it, with an argument of a `,` ("comma") to get an array of animal names:

```ruby
"hippo,giraffe,monkey,horse".split(",")
  => ["hippo", "giraffe", "monkey", "horse"]
```

#### Range to Array

The `.to_a` method, when called on a range, can convert a range of numbers to an array:

```ruby
(1..10).to_a
  => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

#### Array to String

The `.join` method, when called on a array, will convert it into a string. This method takes in an optional string argument containing either a character or a set of characters that will be inserted between each array element, as they are assembled into a string.

For example, calling `.join` with *no* argument will create a string out of the array's elements by placing each one directly adjacent to the next one:

```ruby
["a", "b", "c"].join
  => "abc"
```
But calling `.join` on the same array and giving it an argument of a `" :-) "` ("smiley face") will place an occurrence of that string, (i.e. the smiley face) between each letter:

```ruby
["a", "b", "c"].join(" :-) ")
  => "a :-) b :-) c"
```

## Instructions

* Fork and clone this lab. Run `learn` to see the tests fail.
* Write a method `oxford_comma` that takes an argument array of string elements and converts it into a string using the Oxford comma. For example, the array `["fiddleheads","okra","kohlrabi"]` should get converted to the string `"fiddleheads, okra, and kohlrabi"`.
  * **Hint:** *Remember, strings can be operated on very similarly to arrays. For instance, you can add elements to the end of strings with the* `<<` *("shovel") method just like you can with arrays.*
  * **Hint:** *What methods are available to you for converting arrays into strings? You might want to look it up in the Ruby Documentation.*
* This might be a challenging lab, so take your time using Google and playing around with your code. Good luck and have fun!

## Resources
* [Wikipedia](http://en.wikipedia.org) - [Serial Comma](http://en.wikipedia.org/wiki/Serial_comma)
* [Dot Net Perls - Convert](http://www.dotnetperls.com/convert-ruby)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/oxford-comma' title='Oxford Comma List Formatter'>Oxford Comma List Formatter</a> on Learn.co and start learning to code for free.</p>

def oxford_comma(array)
  if array.size == 1
    new_array = array.join

  end
  if array.size == 2
    new_array = array.join(" and ")
  end
  if array.size == 3
    temporary_array = array[2]
    array.pop
    array.push("and ")
    new_array = array.join(", ")
    new_array << temporary_array
  end
  if array.size >= 4
    temporary_array = array[array.size - 1]
    array.pop
    array.push("and ")
    new_array = array.join(", ")
    new_array << temporary_array
  end
  return new_array
end


##Second version without .join

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
    "#{more_than_three(array)}and #{array[-1]}"
  end
end
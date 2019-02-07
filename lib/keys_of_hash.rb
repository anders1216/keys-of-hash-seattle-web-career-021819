# This method should take an undefined number of arguments, using the splat
# operator, and return an array with every key from the hash whose value matches
# the value(s) given as an argument.
require 'pry'

class Hash # I guess this works
  def keys_of(*arguments)
    key_arr = []
    arguments.each do |idek| #iterates over arguments if arguments>1 and sets each argument up as a variable to be called on in the next iterator. Tried arguments = idek, didnt work for multiple arguments.
      self.each do |thingIwant| #putting in one argument[?] here outputs an array that is the key/value pair from self that is being iterated over by 'each' instead of two arguments which would seperate the key/value pair into the corresponding arguments. either way works but the following if statment must reflect the outputs.
        if thingIwant.include?(idek)
          key_arr << thingIwant[0]
        end
        end
      end
    key_arr
  end
end

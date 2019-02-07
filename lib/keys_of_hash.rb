# This method should take an undefined number of arguments, using the splat
# operator, and return an array with every key from the hash whose value matches
# the value(s) given as an argument.
require 'pry'

class Hash # I guess this works
  def keys_of(*arguments)
    key_arr = []
    arguments.each do |idek| # Sets up the the key/value backwards comparison I believe.
      self.each do |thingIwant| #I'm still unsure about self... so this basically reaches outside of the method to reference the hash that the method is being called on and iterates through the hash?
        if thingIwant.include?(idek)
          key_arr << thingIwant[0]
        end
      end
    end
    key_arr
  end
end

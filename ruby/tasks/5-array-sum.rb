#! rspec ./../tests/5-array-sum.rb

#
 # Sums all integers in a nested array, no matter how many levels deep.
 # @param {Array} startOfTree An array containing other arrays, ints, strings..
 # @returns {Number} The sum of all integers contained in the input, at any level.
#
def array_sum(start_of_tree)
  # Reduce input to a single array.
  start_of_tree.flatten!
  # Remove elements that are not of Integer type.
  start_of_tree.select! { |element| element.is_a? Integer }
  # Return the sum of the integers.
  start_of_tree.sum
end

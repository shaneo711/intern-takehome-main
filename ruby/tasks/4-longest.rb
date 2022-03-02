#! rspec ./../tests/4-longest.rb

#
 # Returns the longest string out of an array of strings.
 # @param {Array} strings An array that might contain strings.
 # @returns {String} The longest string from within the input array.
#
def longest_string(strings)
  # Reduce input to a single array.
  strings.flatten!
  # Remove elements that are not of the array type.
  strings.select! { |element| element.is_a? String }
  # Return the strings with the longest length.
  strings.max_by(&:length)
end

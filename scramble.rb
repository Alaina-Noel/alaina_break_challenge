# DESCRIPTION:
# Complete the function scramble(str1, str2) that returns true 
# if a portion of str1 characters can be rearranged to match str2, 
# otherwise returns false.

# Part 1: Get all unskipped tests in the spec file to pass
# Part 2: Unskip the final test. Produce a solution that will pass
# all tests in under one second.
#letters lower cased no special chars

#take the 1st & 2nd string & sort the letters
#zip them together they should match 
#iterate through i should be able to say i.uniqu? == 1
#only want to check this for the length of the 2ns string
# [[l,l][o,o][r,s]]

#until str1.lenght == 0
#check and see if str2[0].in? str1. Look for the index of that number. 
#delete it from each string.
# return false str2[0].in?  is not true
# return true

# def scramble(s1, s2)
#   arr_s1 = s1.chars
#   arr_s2 = s2.chars
#   arr_s1_clone = arr_s1.clone
#   arr_s2_clone = arr_s2.clone
#   arr_s2.each_with_index do |char, i|
#     if arr_s1_clone.any?(char)
#       arr_s1_clone.delete_at(arr_s1_clone.index(char))
#       arr_s2_clone.delete_at(i)
#     else
#       return false 
#     end
#   end
#   return true
# end

def scramble(s1, s2)
  arr2_hash = s2.chars.tally
  arr1_hash = s1.chars.tally
  arr2_hash.each do |key, value|
    return false if arr1_hash[key].nil?
    return false if arr1_hash[key] < arr2_hash[key]
  end
  return true
end
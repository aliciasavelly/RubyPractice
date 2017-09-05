require 'set'
# In All Strings
# ------------------------------------------------------------------------------
# Check if a short_string is a substring of ALL of the long_strings

def in_all_strings?(long_strings, short_string)
  long_strings.each do |string|
    return false unless substring(string, short_string)
  end

  true
end

def substring(str1, str2)
  i = 0
  j = str2.length

  while i <= str1.length - str2.length
    return true if str1[i...j] == str2

    i += 1
    j += 1
  end

  false
end

puts "---------In All Strings-------"
puts in_all_strings?(["thisisaverylongstring", "thisisanotherverylongstring"], "sisa") == true
puts in_all_strings?(["thisisaverylongstring", "thisisanotherverylongstring"], "isan") == false
puts in_all_strings?(["gandalf", "aragorn", "sauron"], "sam") == false
puts in_all_strings?(["axe", "ajax", "axl rose"], "ax") == true

# Biodiversity
# ------------------------------------------------------------------------------
# Given an array of specimens, return the biodiversity index, which is defined
# by the following formula: number_of_species^2 times the smallest_population_size
# divided by the largest_population_size.

# In code, biodiversity = number_of_species**2 * smallest_population_size / largest_population_size
#
# ------------------------------------------------------------------------------

def biodiversity_index(specimens)
  count = animal_count(specimens)
  count[0] ** 2 * count[1] / count[2]
end

def animal_count(specimens)
  animal_set = {}

  specimens.each do |specimen|
    animal_set[specimen] = animal_set[specimen] ? animal_set[specimen] + 1 : 1
  end

  result = [animal_set.size]

  greatest = -1
  least = specimens.length + 1
  animal_set.each do |key, val|
    greatest = val if val > greatest
    least = val if val < least
  end

  [animal_set.size, least, greatest]
end


puts "------Biodiversity------"
puts biodiversity_index(["cat"]) == 1
# 1 ** 2 * 1 / 1
puts biodiversity_index(["cat", "cat", "cat"]) == 1
# 1 ** 2 * 3 / 3
puts biodiversity_index(["cat", "cat", "dog"]) == 2
# 2 ** 2 * 1 / 2
puts biodiversity_index(["cat", "fly", "dog"]) == 9
puts biodiversity_index(["cat", "fly", "dog", "dog", "cat", "cat"]) == 3

# For F's Sake
# ------------------------------------------------------------------------------
# Given a string, return the word that has the letter "f" closest to
# the end of it.  If there's a tie, return the earlier word.  Ignore punctuation.
#
# If there's no f, return an empty string.
# ------------------------------------------------------------------------------


def for_fs_sake(string)

end

puts "------For F's Sake------"
puts for_fs_sake("puff daddy") == "puff"
puts for_fs_sake("I got a lot of problems with you people! And now you're gonna hear about it!") == "of"
puts for_fs_sake("fat friars fly fish") == "fat"
puts for_fs_sake("the French call him David Plouffe") == "Plouffe"
puts for_fs_sake("pikachu! i choose you!") == ""

# Time Sums
# ------------------------------------------------------------------------------
# Return an array of all the minutes of the day whose digits sum to N.
#
# Use military time, so 1:00 PM is really 13:00 PM.
# ------------------------------------------------------------------------------

def time_sums(n)

end

def sum_two_digits(num)

end

# p sum_two_digits(32)

puts "------Tens Time------"

puts time_sums(0) == ["00:00"]
puts time_sums(1) == ["00:01", "00:10", "01:00", "10:00"]
puts time_sums(23) == ["09:59", "18:59", "19:49", "19:58"]
puts time_sums(24) == ["19:59"]


# Censor
# ------------------------------------------------------------------------------
# Write a function censor(sentence, curse_words) that censors the words given.
# Replace the vowels in the curse word with "*".

def censor(sentence, curse_words)

end

def check_if_curse(word, curse_words)

end

# p check_if_curse("Darn", ["darn", "gun"]) == false
# p check_if_curse("squat", ["schnikeys", "diddly", "squat"]) == true

puts "------Censor------"
puts censor("Darn you Harold you son of a gun", ["darn", "gun"]) == "D*rn you Harold you son of a g*n"
puts censor("Schnikeys I don't give a diddly squat", ["schnikeys", "diddly", "squat"]) == "Schn*k*ys I don't give a d*ddly sq**t"

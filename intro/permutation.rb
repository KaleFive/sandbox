# thought of this while looking at a different problem and realized i should know how to do this
#
# Permutation time complexity is FACTORIAL n!

def permutation(string, substring)
  total = 0
  if string.length == 0
    puts substring
    return 1
  else
    string.split("").each_with_index do |char, index|
      new_substring = substring + char
      new_string = string[0...index] + string[index+1..-1]
      total += permutation(new_string, new_substring)
    end
    return total
  end
end
# puts "Result total is #{permutation("permi", "")}"

# 2 char - 2 permutations
# 3 - 6 permutations
# 4 - 24 permutations

def base_case_and_build_permutations(string)
  perm_array = []
  if string.length == 1
    return [string]
  end
  string.split("").each_with_index do |char, index|
    substring = string[0...index] + string[index+1..-1]
    subpermutations = base_case_and_build_permutations(substring)
    subpermutations.each do |perm|
      perm.split("").each_with_index do |sub_char, sub_index|
        temp_perm = perm.dup
        perm_array << temp_perm.insert(sub_index, char)
      end
      perm_array <<  perm.insert(-1, char)
    end
  end
  return perm_array
end
puts base_case_and_build_permutations("per").uniq

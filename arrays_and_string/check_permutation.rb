def check_permutation(s1, s2)
  if s1.length != s2.length
    return false
  end

  hash = {}
  s1.chars.each do |s1_char|
    if hash[s1_char].nil?
      hash[s1_char] = 1
    else
      hash[s1_char] += 1
    end
  end

  s2.chars.each do |s2_char|
    if hash[s2_char].nil? || hash[s2_char] == 0
      return false
    else
      hash[s2_char] -= 1
    end
  end

  hash.each do |key, value|
    if value != 0
      return false
    end
    return true
  end
end

def check_permutation_sort_first(s1, s2)
  if s1.length != s2.length
    return false
  end

  return s1.chars.sort == s2.chars.sort
end

puts check_permutation_sort_first("wellwhatdoyjuknow", "wellwhatdoyuoknow")

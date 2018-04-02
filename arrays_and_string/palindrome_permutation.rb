def palindrome_permutation(string)
  hash = {}
  string.gsub(/\s+/, "").chars.each do |c|
    if hash[c].nil?
      hash[c] = 1
    else
      hash[c] += 1
    end
  end

  odd_value_buffer = false
  hash.each do |key, value|
    if value % 2 != 0 #means it value is odd
      if odd_value_buffer
        return false
      else
        odd_value_buffer = true
      end
    end
  end
  return true
end

puts palindrome_permutation("taco cat")

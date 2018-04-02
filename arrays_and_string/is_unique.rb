# 1.1 on page 90
def is_unique?(string)
  hash = {}
  string.chars.each do |c|
    if hash[c].nil?
      hash[c] = true
    else
      return false
    end
  end
  return true
end

def is_unique_no_hash?(string)
  string.chars.each_with_index do |c, index|
    string[index+1..-1].chars.each do |second_c|
      if c == second_c
        return false
      end
    end
  end
  return true
end

puts is_unique_no_hash?("Kevin")

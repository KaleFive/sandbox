# In ruby, the string.strip.chars.each_with_index call does not change the actualy object "string"


def urlify(string)
  string.strip.gsub(/\s+/, "%20")
end

def urlify_strict(string)
  string.strip.chars.each_with_index do |char, index|
    next if char != " "
    string[index] = "%20"
  end
  return string
end

puts urlify_strict("d d")

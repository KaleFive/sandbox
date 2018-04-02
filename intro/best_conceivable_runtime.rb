def bcr(array, sum)
  hash = {}
  array.each do |a|
    hash[a] = true
  end
  array.each do |a|
    target = sum - a
    if hash[target] == true
      puts "(#{target}, #{a})"
    end
  end
end

bcr([2,3,5,7,12,4,13], 5)

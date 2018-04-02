# page 67 - section on bottlenecks
# this shows that the bottlenecks
# sorting the array will take too long compared to using a hash
# in this one case, we know the "Target" number that we are looking for in relation to each element in the array

array = [1, 3, 4, 2, 5, 19, 8]
k = 2

def find_pairs_hash(array, k)
  hash = {}
  array.each do |element|
    hash[element] = true
  end
  array.each do |element|
    other = (k-element).abs
    if other != element && hash[other] == true
      puts "(#{element}, #{other})"
    end
  end
end

#find_pairs_hash(array, k)

def find_pairs_brute(array, k)
  array.each_with_index do |i, i_index|
    array[i_index..-1].each do |j|
      if (i - j).abs == k
        puts "(#{i}, #{j})"
      end
    end
  end
end

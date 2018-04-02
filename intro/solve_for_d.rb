# page 68 - we are trying to solve for the value of d that solves...
#   a cubed + b cubed == c cubed + d cubed

def solve_for_d_optimized
  hash = {}
  for a in (1..5)
    for b in (1..5)
      result = (a**2) + (b**2)
      if hash[result].nil?
        hash[result] = ["(#{a}, #{b})"]
      else
        hash[result] << "(#{a}, #{b})"
      end
    end
  end

  hash.each do |key, array|
    if array.length > 1
      puts "This is the result (#{array})"
    end
  end
end

def solve_for_d
  for a in (2..1000)
    for b in (2..1000)
      for c in (2..1000)
        d = Math.cbrt((a**3) + (b**3) - (c**3))
        if ((a**3) + (b**3)) == ((c**3) + (d**3)) && (d%1 == 0)
          puts "this is the right value of a: #{a}, b: #{b}, c: #{c}, d: #{d}"
        end
      end
    end
  end
end
# solve_for_d

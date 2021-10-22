def triangle(n)
  if n == 0
    [1]
  else
    before = triangle(n - 1)
    result = []
    (0..(before.size - 2)).each do |i|
      result << before[i] + before[i + 1]
    end
    [1] + result + [1]
  end
end

p triangle(1)
a = [4, 8, 15, 16, 23, 42]

# Iterador interno
suma = 0
a.each do |e|
  suma += e
  puts "#{e}, acumulado = #{suma}"
end

# Iterador externo
enum = a.to_enum
puts enum.next
puts enum.next
puts enum.next
puts enum.peek
puts enum.next
puts enum.next

puts

enum.rewind
puts enum.next
puts enum.next

# Generator
enum2 = Enumerator.new do |yielder|
  n = 1
  yielder << n
  n += 10
  yielder << n
  n *= 2
  yielder << n
end

puts
puts enum2.next
puts enum2.next
puts enum2.next
enum2.rewind
puts enum2.next

puts

enum2.each {|e| puts e}

puts

enum3 = Enumerator.new do |yielder|
  n = 1
  while true
    yielder << n
    n *= 2
  end
end

10.times { puts enum3.next }

p enum3.take(20)
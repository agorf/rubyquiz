
@y = %{\
 _     _  _     _  _  _  _  _
| |  | _| _||_||_ |_   ||_||_|
|_|  ||_  _|  | _||_|  ||_| _|}.split("\n").map {|l| l.scan(/.../) }

=begin
 __
|  |
|  |
|  |
|__|

=end

def print_number(n, size = 2)
  digits = n.to_s.split('').map {|n| n.to_i }

  (0..2 * size).each do |i|
    digits.each do |j|
      print @y[i][j]
      print ' '
    end

    puts
  end
end

print_number 1337

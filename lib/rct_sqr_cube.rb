class Rectangle
    def initialize(length, width)
        @length = length
        @width = width
    end

    def area
        return @length * @width
    end

    def perimeter
        return 2 * @length + 2 * @width
    end
end

class Square < Rectangle
    def initialize(length)
        super(length, length)
    end
end

class Cube < Square
    def surface_area
        return self.area * 6
    end

    def volume
        return self.area * @length
    end

    # got rid of to_s from python
end

# Reformatted example test case.
cube = Cube.new(3)
puts "3x3x3 Cube"
puts "Surface Area", cube.surface_area
puts "Volume", cube.volume

# Added more test cases.
square = Square.new(3)
puts ""
puts "3x3 Square"
puts "Area", square.area
puts "Perimeter", square.perimeter

rectangle = Rectangle.new(3, 2)
puts ""
puts "3x2 Rectangle"
puts "Area", rectangle.area
puts "Perimeter", rectangle.perimeter
# FROM 2150 Lecture (James Yu)

class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def area(self):
        return self.length * self.width

    def perimeter(self):
        return 2 * self.length + 2 * self.width

# Here we declare that the Square class inherits from the Rectangle class
class Square(Rectangle):
    def __init__(self, length):
        super().__init__(length, length)


class Cube(Square):
    # exercise1 : def surface_area( ) = 6 * area of square
    def surface_area(self):
        return self.area() * 6              # self.area() refers to area function in Rectangle()
                                            # Because Cube has no area() function, no need to user super().

    # exercise2 : def volume( ) = face_area * length
    def volume(self):
        return self.area() * self.length    # self.area() refers to area function in Rectangle()

    # exercise 3: write __str__(self) to display the surface area and volume
    def __str__(self):
        return f"Surface Area: {self.surface_area()}\nVolume: {self.volume()}"

    # Note in this Cub(x) you have to provide an argument x for the square


# exercise 4: drive codes to display the following results
# cub(3)  surface area = 54, volume = 27
cube = Cube(3)
print(cube)

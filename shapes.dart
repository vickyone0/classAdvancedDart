import 'dart:math';

abstract class Shape{

  double get area;
  double get perimeter;

}

class Square extends Shape{

  Square(this.side);
  final double side;

  @override
  
  double get area => side* side;
  
  @override
  double get perimeter => 4*side;

}
class Circle extends Shape{
  
  Circle(this.radies);
  final double radies;

  @override
  double get area => pi *radies*radies;
  
  @override
  double get perimeter => 2*pi*radies;

}

void printArea(Shape shape){
  print(shape.area);
  print(shape.perimeter);
}

void main() {
  final square = Square(10);
  printArea(square);
  final circle = Circle(10);
  printArea(circle);
  final shape =[
    Square(10),
    Circle(10)

  ];

  shape.forEach(printArea);

}
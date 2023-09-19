import 'dart:math';

abstract class Shape{
  Shape();
  double get area;
  double get perimeter;

  
  factory Shape.fromJson(Map<String, Object> json) {
    final type = json['type'];
    switch (type) {
      case 'square':
        final side = json['side'];
        if (side is double) {
          return Square(side);
        }
        throw UnsupportedError('invalid or missing side property');
      case 'circle':
        final radius = json['radius'];
        if (radius is double) {
          return Circle(radius);
        }
        throw UnsupportedError('invalid or missing radius property');
      default:
        throw UnimplementedError('shape $type not recognized');
    }
  }

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
   final shapesJson = [
    {
      'type': 'square',
      'side': 10.0,
    },
    {
      'type': 'circle',
      'radius': 5.0,
    },
    {
      'type': 'triangle',
    },
  ];
  final shapes = shapesJson.map((shapeJson) => Shape.fromJson(shapeJson));
  shapes.forEach(printArea);

}
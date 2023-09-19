import 'package:equatable/equatable.dart';

class Point extends Equatable{
  const Point(this.x, this.y);
  final int x ;
  final int y ;
  
  @override
  List<Object?> get props => [x, y];

  @override
  bool? get stringify => true;

}

void main() {
  print(Point(1, 1));
  print(Point(1, 1)==Point(2,1));
}
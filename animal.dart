class Animal{
  const Animal({required this.age });

  final int age;

  void sleep(){
    print('sleeping...');
  }

}

class Dog extends Animal{
  Dog({required int age}) : super(age: age);
  @override 
  void sleep(){
    super.sleep();
    print('sleep more than this...');

  }

}
void main() {
  final dog = Dog(age: 5);
  dog.sleep();
  
}
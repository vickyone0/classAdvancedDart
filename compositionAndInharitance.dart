

abstract class Widget{

}

class Button extends Widget{
  
  Button({required this.child, this.onPressed});
  final Widget child;
  final void Function()? onPressed;

}

class Text extends Widget{

  Text(this.text);
  final String text;

}

void main(){
  final button = Button(child: Text('Hello'),
  onPressed: () => print('hi button'),);

}
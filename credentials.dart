class Credentials {
  const Credentials({this.email = '', this.password = ''});
  final String email;
  final String password;

  Credentials copyWith({
    String? email,
    String? password,
  }){
    return Credentials(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  String toString() => 'Credentials($email, $password)';

}

void main(){
  const credentials = Credentials();
  //credentials.email = 'hidden@gmail.com';

  final update1 = credentials.copyWith(email: 'ram@gmail.com');
  print(update1);
  final update2 = update1.copyWith(password: '123456');
  print(update2);
}
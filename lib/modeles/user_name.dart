// TODO: Definición de la clase UserName
class UserName {
  final String title;
  final String first;
  final String last;
  // TODO: Constructor de la clase UserName
  UserName({required this.title, required this.first, required this.last});
// TODO: Factory constructor que crea una instancia de UserName desde un mapa
  factory UserName.fromMap(Map<String, dynamic> json) {
    return UserName(
      title: json['title'],
      first: json['first'],
      last: json['last'],
    );
  }
}

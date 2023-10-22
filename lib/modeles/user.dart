import 'package:comsumir_api/modeles/user_dob.dart';
import 'package:comsumir_api/modeles/user_location.dart';
import 'package:comsumir_api/modeles/user_name.dart';
import 'package:comsumir_api/modeles/user_picture.dart';
// TODO: Definición de la clase User
class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture picture;
  // TODO: Constructor de la clase User
  User(
      {required this.gender,
      required this.email,
      required this.phone,
      required this.cell,
      required this.nat,
      required this.name,
      required this.dob,
      required this.location,
      required this.picture});
      // TODO: Factory constructor que crea una instancia de User desde un mapa
  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName.fromMap(e['name']);
    final dob = UserDob.fromMap(e['dob']);
    final location = UserLocation.fromMap(e['location']);
    final picture = UserPicture.formMap(e['picture']);
    return User(
      gender: e['gender'],
      email: e['email'],
      phone: e['phone'],
      cell: e['cell'],
      nat: e['nat'],
      name: name,
      dob: dob,
      location: location,
      picture: picture,
    );
  }
// TODO: Método que devuelve el nombre completo del usuario
  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}

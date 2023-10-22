// TODO: Definición de la clase UserPicture
class UserPicture {
  final String large;
  final String medium;
  final String thumbnail;
    // TODO: Constructor de la clase UserPicture
  UserPicture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });
    // TODO: Factory constructor que crea una instancia de UserPicture desde un mapa
  factory UserPicture.formMap(Map<String, dynamic> json) {
    return UserPicture(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }
}

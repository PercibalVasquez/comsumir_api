class UserDob {
  final DateTime date;  // TODO: Comentario explicando date (fecha de nacimiento)
  final int age;  // TODO: Comentario explicando age (edad)

  UserDob({
    required this.age,  // TODO: Comentario explicando age (edad)
    required this.date,  // TODO: Comentario explicando date (fecha de nacimiento)
  });

  factory UserDob.fromMap(Map<String, dynamic> json) {
    return UserDob(
      age: json['age'],  // TODO: Comentario explicando age (edad)
      date: DateTime.parse(json['date']),  // TODO: Comentario explicando date (fecha de nacimiento)
    );
  }
}

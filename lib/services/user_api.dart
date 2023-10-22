// TODO: Importa la librería para trabajar con JSON
import 'dart:convert';
import 'package:comsumir_api/modeles/user.dart'; // TODO: Importa el modelo User
import 'package:http/http.dart' as http; // TODO: Importa la librería http del paquete http

// Clase que proporciona métodos para realizar peticiones a una API y obtener usuarios
class UserApi {
  // Método estático que obtiene una lista de usuarios de una API
  static Future<List<User>> fetchUsers() async {
    const url = 'https://randomuser.me/api/?results=100'; // TODO: URL de la API
    final uri = Uri.parse(url); // TODO: Convierte la URL en un objeto Uri
    final response = await http.get(uri); // TODO: Realiza una solicitud GET a la URL
    final body = response.body; // TODO: Obtiene el cuerpo de la respuesta

    // TODO: Decodifica el cuerpo de la respuesta JSON en un mapa
    final json = jsonDecode(body);

    // TODO: Obtiene la lista de resultados del JSON
    final results = json['results'] as List<dynamic>;

    // TODO: Mapea cada resultado a un objeto User y los almacena en una lista
    final users = results.map((e) {
      return User.fromMap(e);
    }).toList();

    // TODO: Devuelve la lista de usuarios obtenida de la API
    return users;
  }
}

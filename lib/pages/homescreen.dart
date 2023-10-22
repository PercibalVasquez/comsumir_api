// TODO: Importa las bibliotecas necesarias.
import 'package:comsumir_api/modeles/user.dart';
import 'package:comsumir_api/services/user_api.dart'; // TODO: Importa el servicio de la API de usuarios.
import 'package:flutter/material.dart'; // TODO: Importa el paquete Flutter para la interfaz de usuario.

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = []; // TODO: Lista de usuarios obtenida de la API.

  @override
  void initState() {
    super.initState();
    fetchUsers(); // TODO: Llama a la función para obtener los usuarios al iniciar la pantalla.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest Api Call'), // TODO: Título de la aplicación.
      ),
      body: ListView.builder(
        itemCount: users.length, // TODO: Número de elementos en la lista.
        itemBuilder: (context, index) {
          final user = users[index];
          final color = user.gender == 'male' ? Colors.blue : Colors.pink;

          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}', style: TextStyle(color: Colors.amberAccent)), // TODO: Muestra el número de consulta
              backgroundImage: NetworkImage(user.picture.thumbnail), // TODO: Muestra la imagen del usuario.
            ),
            title: Text(user.fullName), // TODO: Muestra el nombre completo del usuario.
            subtitle: Text(user.dob.date.toString()), // TODO: Muestra la fecha de nacimiento del usuario.
            tileColor: color, // TODO: Establece el color de fondo del ListTile.
          );
        },
      ),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers(); // TODO: Obtiene la lista de usuarios desde la API.
    setState(() {
      users = response; // TODO: Actualiza la lista de usuarios en el estado.
    });
  }
}

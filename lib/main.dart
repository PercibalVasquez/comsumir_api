// TODO: Importar el archivo homescreen.dart del paquete comsumir_api/pages
import 'package:comsumir_api/pages/homescreen.dart';

// TODO: Importar el paquete de Flutter para Material Design
import 'package:flutter/material.dart';

// TODO: Función principal de la aplicación
void main() => runApp(const MyApp());

// TODO: Definición de la clase MyApp que extiende de StatelessWidget
class MyApp extends StatelessWidget {
  // TODO: Constructor de la clase MyApp
  const MyApp({super.key});

  // TODO: Método build que construye la interfaz de la aplicación
  @override
  Widget build(BuildContext context) {
    // TODO: Devuelve un MaterialApp con debugShowCheckedModeBanner en false
    // y como pantalla inicial HomeScreen()
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

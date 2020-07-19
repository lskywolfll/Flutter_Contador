import 'package:flutter/material.dart';

void main() {
  // Espera un widget(Clase)
  runApp(new MyApp());
}

// Cada widget necesita un build para poder pintar en pantalla
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}

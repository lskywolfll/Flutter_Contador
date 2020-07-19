import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        // Agrega como una oscuridad
        elevation: 4,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.functions), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text('Contenido!'),
      ),
    );
  }
}

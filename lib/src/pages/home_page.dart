import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTextoContenido =
      new TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  final estiloTextoNumero = new TextStyle(fontSize: 25);
  final conteo = 10;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Cantidad de clicks: ',
              style: estiloTextoContenido,
            ),
            Text(
              '$conteo',
              style: estiloTextoNumero,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('HolA!!!!');
        },
        child: Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

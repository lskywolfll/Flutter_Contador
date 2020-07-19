import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

// el _ deja como privado esta clase unicamente accesible en este archivo
class _ContadorPageState extends State<ContadorPage> {
  final _estiloTextoContenido =
      new TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  final _estiloTextoNumero = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
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
              style: _estiloTextoContenido,
            ),
            Text(
              '$_conteo',
              style: _estiloTextoNumero,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _conteo = 0;
            });
          },
          child: Icon(Icons.exposure_zero),
          tooltip: 'Reinicia el conteo',
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _conteo++;
            });
          },
          child: Icon(Icons.exposure_plus_2),
          tooltip: 'Incrementa en dos',
        ),
        SizedBox(width: 10.0),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _conteo++;
            });
          },
          child: Icon(Icons.add),
          tooltip: 'Incrementa en uno',
        )
      ],
    );
  }
}
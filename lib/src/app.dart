import 'package:flutter/material.dart';
import 'package:flutter_vscode/src/pages/contador_page.dart';
import 'package:flutter_vscode/src/pages/home_page.dart';

// Cada widget necesita un build para poder pintar en pantalla
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorPage(),
    );
  }
}

import 'dart:ffi';

import 'package:flutter/material.dart';

class Controlador extends ChangeNotifier {
  static Controlador instance = Controlador();

  bool isdarktheme = false;
  mudartema() {
    isdarktheme = !isdarktheme;
    notifyListeners();
  }
}

class Alternador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: Controlador.instance.isdarktheme,
        onChanged: (value) {
          Controlador.instance.mudartema();
        });
  }
}

class Contador extends StatefulWidget {
  static Contador abc = Contador();
  @override
  ContadorState createState() => ContadorState();
}

class ContadorState extends State<Contador> {
  int counter = 0;

  void  incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: Contador.abc.,
      tooltip: 'Contador',
      child: Icon(Icons.add),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:teste/app_widget.dart';
import 'package:teste/homepage.dart';
import 'package:teste/main.dart';

class Iniciar extends StatefulWidget {
  @override
  _IniciarState createState() => _IniciarState();
}

class _IniciarState extends State<Iniciar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tela inicial'),
        ),
        body: Column(children: [
          Container(
            child: Text(
              'Voce realizou cliques',
            ),
            alignment: Alignment.bottomCenter,
            height: 250,
          ),
          Container(
            alignment: Alignment.center,
            child: (RaisedButton(
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text('Iniciar Contador'),
            )),
          ),
        ]));
  }
}

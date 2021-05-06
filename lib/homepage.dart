import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:teste/controlador.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atividade 1'),
      ),
      body: Column(
        children: [
          Container(
            child: Text(
              'Voce realizou $counter cliques',
            ),
            height: 500,
            alignment: Alignment.center,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Contador',
        child: Icon(Icons.add),
      ), //
    );
  }
}

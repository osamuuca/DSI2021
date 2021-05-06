import 'package:flutter/material.dart';
import 'package:teste/controlador.dart';
import 'homepage.dart';
import 'iniciar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Controlador.instance,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: Controlador.instance.isdarktheme
                    ? Brightness.dark
                    : Brightness.light),
            home: Iniciar(),
          );
        });
  }
}

import 'package:controle_continu/views/decompteur.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Timer',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
            primary: Color.fromARGB(255, 235, 221, 255),
            onPrimary: Color.fromARGB(255, 29, 1, 92)),
      ),
      home: const Decompteur(),
    );
  }
}

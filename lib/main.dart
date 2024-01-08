import "package:flutter/material.dart";
import 'package:dice/gradient_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 248, 186, 0), Colors.amberAccent),
      ),
    );
  }
}

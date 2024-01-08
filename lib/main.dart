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
          Color.fromARGB(255, 236, 177, 0),
          Color.fromARGB(255, 255, 219, 87),
        ),
      ),
    );
  }
}

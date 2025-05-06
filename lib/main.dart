import 'package:flutter/material.dart';
import 'package:flutter_bloc_timer/src/app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bloc Timer",
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(72, 74, 12, 1),
        ),
      ),
      home: const App(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:reallivetracking/prosespengantaran.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: antar(),
      debugShowCheckedModeBanner: false,
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

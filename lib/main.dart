import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Basics'),
            ),
            body: Container(
              color: Colors.pink,
              child: Container(
                color: Colors.yellow,
                margin: EdgeInsets.all(20),
              ),
            )
        )
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String txt = '';

  @override
  void initState() {
    txt = 'Hello darkness my old friend !';
    super.initState();
  }

  void onButtonPressed() {
    setState(() {
      txt = 'I have come to talk with you again !';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: onButtonPressed,
            child: Text(txt),
          ),
        ),
      ),
    );
  }
}

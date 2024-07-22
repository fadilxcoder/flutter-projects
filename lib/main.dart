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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Basics'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () => {},
            ),
            body: const Image(
              image: NetworkImage(
                  'https://storage.googleapis.com/cms-storage-bucket/ab8b95b9e14883037297.png'),
            )));
  }
}

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String type;
  String setup;
  String punchline;
  int id;

  SecondScreen({
    super.key,
    required this.type,
    required this.setup,
    required this.punchline,
    required this.id
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                setup,
                style: TextStyle(fontSize: 20),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                punchline,
                style: TextStyle(fontSize: 15),
              ),
            )
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back !'),
            ),
          ),
        ],)
      )
    )
    ;
  }
}
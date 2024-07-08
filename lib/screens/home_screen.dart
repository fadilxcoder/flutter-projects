import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:udemy_app/screens/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () async {
                var url = Uri.parse('https://official-joke-api.appspot.com/random_joke');
                var response = await http.get(url);
                // print('${response.body}');
                // print('${response.statusCode}');
                var content = jsonDecode(response.body);
                String type = content['type'];
                String setup = content['setup'];
                String punchline = content['punchline'];
                int id = content['id'];
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                          type: type,
                          setup: setup,
                          punchline: punchline,
                          id: id,
                        )
                    )
                )
                ;
              },
              child: Text("Get joke !"),
            )
          )
        )
    )
    ;
  }
}
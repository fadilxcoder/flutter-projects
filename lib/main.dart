import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*
    return const MaterialApp(
      home: Dialogclass(),
    );
    */

    return MaterialApp(
      title: 'My First App',

      /* Upgrading theme UI */
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          // TRY THIS: Change to "Brightness.light" and see that all colors change to better contrast a light background.
          brightness: Brightness.dark,
        ),

        // Define the default `TextTheme`. Use this to specify the default text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),

          // TRY THIS: Change one of the GoogleFonts to "lato", "poppins", or "lora". The title uses "titleLarge" and the middle text uses "bodyMedium".
          titleLarge: GoogleFonts.oswald(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: GoogleFonts.merriweather(),
          displaySmall: GoogleFonts.pacifico(),
        ),
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
              'https://storage.googleapis.com/cms-storage-bucket/ab8b95b9e14883037297.png'
          ),
        ),
      ),
    );
  }

}

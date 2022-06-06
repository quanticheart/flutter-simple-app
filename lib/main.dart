import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomeButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  'https://miro.medium.com/max/1400/0*vowtRZE_wvyVA7CB',
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Simple Flutter App',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 32),
              const HomeButton(icon: Icons.phone_android, text: '11 12345-6789'),
              const SizedBox(height: 16),
              const HomeButton(icon: Icons.email, text: 'teste@gmail.com'),
            ],
          ),
        ),
      ),
    );
  }
}



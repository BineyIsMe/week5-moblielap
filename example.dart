import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class GradientButton extends StatelessWidget {
  final String text;
  final Color start;
  final Color end;

  const GradientButton({
    super.key,
    required this.text,
    required this.start,
    required this.end,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start, end],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              GradientButton(text: "OOP", start: Colors.yellow, end: Colors.white),
              SizedBox(height: 20),
              GradientButton(text: "JAVA", start: Colors.purple, end: Colors.blue),
              SizedBox(height: 20),
              GradientButton(text: "C++", start: Colors.orange, end: Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
          const RiveAnimationExample(), // Set RiveAnimationExample as the home widget
    );
  }
}

class RiveAnimationExample extends StatelessWidget {
  const RiveAnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rive Animation Example'),
      ),
      body: Center(
        child: RiveAnimation.asset(
          'assets/animation.riv', // Path to the Rive animation file
          fit: BoxFit.cover, // Ensures animation fits the container
        ),
      ),
    );
  }
}

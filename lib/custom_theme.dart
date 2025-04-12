import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system; // Default system theme

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Demo',
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 255, 73, 73),
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.deepPurple,
          secondary: Color.fromARGB(255, 255, 1, 1),
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
        ),
        useMaterial3: true,
      ),
      themeMode: _themeMode, // Toggle between light and dark mode
      debugShowCheckedModeBanner: false,
      home: HomeScreen(toggleTheme: _toggleTheme),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  const HomeScreen({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, Flutter!',
                style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: 20),
            Text(
              'This is a demonstration of light & dark themes.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleTheme,
        child: const Icon(Icons.brightness_6),
      ),
    );
  }
}

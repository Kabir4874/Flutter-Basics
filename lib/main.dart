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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "Car",
                ),
                Tab(
                  icon: Icon(Icons.directions_train),
                  text: "Train",
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: "Bike",
                ),
              ]),
            ),
            body: TabBarView(children: [
              Center(
                child: Text('Car'),
              ),
              Center(
                child: Text('Train'),
              ),
              Center(
                child: Text('Bike'),
              ),
            ]),
          ),
        ));
  }
}

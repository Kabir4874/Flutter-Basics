import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HeroAnimationExample(),
    );
  }
}

class HeroAnimationExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation Example")),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return DetailScreen();
            }));
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/200',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Screen")),
      body: Center(
        child: Hero(
          tag: 'imageHero',
          child: Image.network('https://picsum.photos/200'),
        ),
      ),
    );
  }
}

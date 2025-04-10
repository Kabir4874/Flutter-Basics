import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Mobile Application',
          style: TextStyle(
              fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.red,
                size: 30,
              ),
              onPressed: () {
                print('Profile icon clicked');
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.redAccent),
              child: DrawerHeader(
                child: Text(
                  'My App',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 200,
                ),
              ),
              Container(width: 20, height: 200, color: Colors.grey),
              Expanded(
                child: Container(
                  color: Colors.greenAccent,
                  height: 200,
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 300,
            child: Image.network(
              'https://images.pexels.com/photos/18261149/pexels-photo-18261149.jpeg?cs=srgb&dl=pexels-manishjangid-18261149.jpg&fm=jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.blue,
                  height: 200,
                ),
              ),
              Container(width: 20, height: 200, color: Colors.grey),
              Expanded(
                child: Container(
                  color: Colors.greenAccent,
                  height: 200,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              print('Button Working');
            },
            child: Text('Click'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Landing Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Landing Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network('https://example.com/your-image.jpg'),
            SizedBox(height: 20),
            Text(
              'Welcome to My Website',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'This is a simple landing page created with Flutter.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Action for button press
              },
              child: Text('Learn More'),
            ),
          ],
        ),
      ),
    );
  }
}

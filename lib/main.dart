import 'package:flutter/material.dart';

void main() {
  runApp(ToiWareLandingPage());
}

class ToiWareLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ToiWare - Optimize Your Banquet Business'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeaderSection(),
              BenefitsSection(),
              FeaturesSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blueAccent,
      child: Column(
        children: <Widget>[
          Text(
            'Welcome to ToiWare',
            style: TextStyle(
              fontSize: 32.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          Text(
            'ToiWare is an online service for banquet restaurants that helps optimize your business processes.',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class BenefitsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Text(
            'Why ToiWare?',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          BenefitTile(
            icon: Icons.access_time,
            title: 'Saves Time',
            description:
                'ToiWare saves time when interacting and planning banquets.',
          ),
          BenefitTile(
            icon: Icons.security,
            title: 'Data Security',
            description:
                'The service stores your data for many years, ensuring security against leaks or damage to document flow.',
          ),
        ],
      ),
    );
  }
}

class BenefitTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  BenefitTile(
      {required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 40.0, color: Colors.blueAccent),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(description),
    );
  }
}

class FeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.grey[200],
      child: Column(
        children: <Widget>[
          Text(
            'Features',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          FeatureTile(
            icon: Icons.cloud,
            title: 'Cloud Storage',
            description: 'Secure and reliable cloud storage for your data.',
          ),
          FeatureTile(
            icon: Icons.analytics,
            title: 'Analytics',
            description: 'Get detailed analytics of your banquet operations.',
          ),
          FeatureTile(
            icon: Icons.support_agent,
            title: '24/7 Support',
            description: 'Round-the-clock support to help you whenever needed.',
          ),
        ],
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  FeatureTile(
      {required this.icon, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 40.0, color: Colors.blueAccent),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(description),
    );
  }
}

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.blueAccent,
      child: Column(
        children: <Widget>[
          Text(
            'Get Started with ToiWare Today!',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {},
            child: Text('Sign Up Now'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            '© 2024 ToiWare. All rights reserved.',
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

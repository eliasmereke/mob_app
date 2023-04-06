import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List of Items',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '{ }  List of Items'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Add your 3 dot option button logic here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Card(
              child: AdBar(
                label: 'Desktop',
                price: 200.0,
                icon: Icons.computer,
              ),
            ),
            Card(
              child: AdBar(
                label: 'Smart Phone',
                price: 1000.0,
                icon: Icons.smartphone,
              ),
            ),
            Card(
              child: AdBar(
                label: 'Cable',
                price: 10.0,
                icon: Icons.cable,
              ),
            ),
            Card(
              child: AdBar(
                label: 'Mouse',
                price: 200.0,
                icon: Icons.mouse,
              ),
            ),
            Card(
              child: AdBar(
                label: 'Smart Screen',
                price: 200.0,
                icon: Icons.smart_screen,
              ),
            ),
            Card(
              child: AdBar(
                label: 'Tablet',
                price: 1000.0,
                icon: Icons.tablet_mac,
              ),
            ),
            Card(
              child: AdBar(
                label: 'Camera',
                price: 1000.0,
                icon: Icons.camera_alt,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AdBar extends StatelessWidget {
  final String label;
  final double price;
  final IconData icon;

  AdBar({
    required this.label,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        label,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text('\$${price.toStringAsFixed(1)}'),
      trailing: IconButton(
        icon: Icon(
          Icons.edit,
          color: Colors.black,
        ),
        onPressed: () {
          // Add your edit button logic here
        },
      ),
    );
  }
}

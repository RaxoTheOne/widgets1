import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FABScreen(),
    );
  }
}

//Screen mit AppBar
class AppBarScreen extends StatelessWidget {
  const AppBarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eine AppBar"),
      ),
    );
  }
}

//Screen mit Drawer
class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eine AppBar"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.orange,
        ),
      ),
    );
  }
}

//Screen mit Body
class BodyScreen extends StatelessWidget {
  const BodyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eine AppBar"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.orange,
        ),
      ),
      body: Center(
        child: TextBox(),
      ),
    );
  }
}

//Textbox Widget
class TextBox extends StatelessWidget {
  const TextBox({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      margin: const EdgeInsets.all(18.0),
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(12.0)),
      child: Text(
        "Das ist ein Screen mit Body",
        style: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

//FAB Screen
class FABScreen extends StatelessWidget {
  const FABScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eine AppBar"),
      ),
      //Drawer auf der rechten Seiten
      endDrawer: Drawer(
        child: Container(
          color: Colors.orange,
        ),
      ),
      body: Center(
        child: TextBox(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Hier action einfügen
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.article),
      ),
    );
  }
}

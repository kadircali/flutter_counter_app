import 'package:flutter/material.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("first app"),
      ),
      backgroundColor: Colors.grey,
      floatingActionButton:
          FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      body: Center(
        child: Text(
          "counter: $counter ",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

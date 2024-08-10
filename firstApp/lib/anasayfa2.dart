import 'package:flutter/material.dart';

class Anasayfa2 extends StatefulWidget {
  const Anasayfa2({super.key});

  @override
  State<Anasayfa2> createState() => _Anasayfa2State();
}

class _Anasayfa2State extends State<Anasayfa2> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "first counter app",
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter++;
              });
            }),
        body: Center(
          child: Text(
            "counter: $counter",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

class ElevatedButtonTest extends StatefulWidget {
  ElevatedButtonTest({super.key});

  @override
  State<ElevatedButtonTest> createState() => _ElevatedButtonTestState();
}

class _ElevatedButtonTestState extends State<ElevatedButtonTest> {
  int sayac = 0;
  Timer? _timer;

  void _startCounter() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        sayac++; // Sayaç değerini artır
      });
    });
  }

  void _stopCounter() {
    _timer?.cancel(); // Sayaç durdur
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "counter: $sayac",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.all(10),
                            elevation: 10),
                        onPressed: () => setState(() {
                              sayac++;
                            }),
                        onLongPress: () {
                          setState(() {
                            print("uzun");
                          });
                        },
                        child: Icon(Icons.add)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            padding: EdgeInsets.all(10),
                            elevation: 10),
                        onPressed: () {
                          setState(() {
                            sayac--;
                          });
                        },
                        child: Icon(Icons.remove)),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey),
                          onPressed: () {
                            setState(() {
                              sayac = 0;
                            });
                          },
                          child: Text(
                            "Reset",
                            style: TextStyle(
                              fontSize: 26,
                            ),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

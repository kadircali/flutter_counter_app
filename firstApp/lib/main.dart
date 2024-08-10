import 'package:flutter/material.dart';
import 'package:ilk_fluttet_projem/anasayfa.dart';

import 'anasayfa2.dart';

void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {
  const AnaUygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ilk flutter app",
      home: Anasayfa2(),
    );
  }
}

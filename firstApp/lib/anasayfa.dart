import 'package:flutter/material.dart';
import 'package:ilk_fluttet_projem/anasayfa.dart';
import 'package:ilk_fluttet_projem/text.dart';

import 'anasayfa2.dart';
import 'circleAvatar.dart';
import 'columnd_row.dart';
import 'container.dart';
import 'elevatedButton.dart';
import 'image.dart';

void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {
  const AnaUygulama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ilk flutter app",
      home: ElevatedButtonTest(),
    );
  }
}

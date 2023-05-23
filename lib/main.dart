import 'package:flutter/material.dart';
import 'package:styledelve/delvePages/Delve2.dart';
import 'package:styledelve/delvePages/Delve3.dart';
import 'delvePages/styleDelveSplash.dart';

void main() {
  runApp(StyleDelve());
}

class StyleDelve extends StatelessWidget {
  const StyleDelve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => styleDelveSplash(),
      '/first': (context) => unoPage(),
      '/2': (context) => delve2(),
      '/third': (context) => delve3(),
    });
  }
}

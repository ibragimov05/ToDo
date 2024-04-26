import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson3/main2/screens/home_page.dart';

void main() {
  runApp(const SecondPage());
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

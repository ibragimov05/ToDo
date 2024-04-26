import 'package:flutter/material.dart';
import 'package:lesson3/main1/screens/homework_screen.dart';

void main() {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWorkScreen(),
    );
  }
}

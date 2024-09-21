import 'package:coding_juniors_assignment/views/home.dart';
import 'package:coding_juniors_assignment/views/page1.dart';
import 'package:coding_juniors_assignment/views/page2.dart';
import 'package:coding_juniors_assignment/views/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home':(context)=>Home(),
        '/page1':(context)=>Page1(),
        '/page2':(context)=>Page2(),
        '/page3':(context)=>Page3(),
      },
    );
  }
}
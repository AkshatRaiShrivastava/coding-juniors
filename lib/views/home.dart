import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Row(
            children: [
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('/page1');
              }, child: Text('Screen 1')),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('/page2');
              }, child: Text('Screen 2')),
              ElevatedButton(onPressed: () {
                Navigator.of(context).pushNamed('/page3');
              }, child: Text('Screen 3')),
            ],
          ),
        ),
      )),
    );
  }
}

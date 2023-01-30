
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget> [
            Text('Clicks Counter'),
            Text('10'),
          ],
        ),
      ) 
    );
  }

}
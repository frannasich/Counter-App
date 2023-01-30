
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  @override
  Widget build(Object context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            const Text('Clicks Counter', style: fontSize30),
            Text( '$counter' , style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_rounded),
            onPressed: () {
              setState(() {
                counter --;
              });
            }
            ),

            // const SizedBox(width: 20,),


            FloatingActionButton(
            child: const Icon(Icons.restart_alt),
            onPressed: () {
              setState(() {
                counter = 0;
              });
            }
            ),

            // const SizedBox(width: 20,),

            FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_rounded),
            onPressed: () {
              setState(() {
                counter ++;
              });
            }
            )
        ],
      ), 
    );
  }
}
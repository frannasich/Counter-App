import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 0;

  void increase() => setState(() => counter++);
  void decrease() => setState(() => counter--);
  void reset() => setState(() => counter = 0);

  @override
  Widget build(Object context) {
    const fontSize30 = TextStyle(fontSize: 30, color: Colors.white);

    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ), 
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    super.key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        // Plus Button
        FloatingActionButton(
          backgroundColor: Colors.red[400],
          child: const Icon(Icons.exposure_minus_1_rounded),
          onPressed: () => decreaseFn()
        ),

        // Reset Button
        FloatingActionButton(
          backgroundColor: Colors.red[400],
          child: const Icon(Icons.restart_alt),
          onPressed: () => resetFn()
        ),

        // Minus Button
        FloatingActionButton(            
          backgroundColor: Colors.red[400],
          child: const Icon(Icons.exposure_plus_1_rounded),
          onPressed: () => increaseFn()
        )
      ],
    );
  }
}
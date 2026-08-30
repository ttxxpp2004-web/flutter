import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CounterScreen(),
  ));
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('العداد'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: _decrement,
              icon: const Icon(Icons.remove_circle),
              iconSize: 42,
              color: Colors.grey[700],
            ),
            const SizedBox(width: 25),
            Text(
              '$_counter',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 25),
            IconButton(
              onPressed: _increment,
              icon: const Icon(Icons.add_circle),
              iconSize: 42,
              color: Colors.grey[700],
            ),
          ],
        ),
      ),
    );
  }
}
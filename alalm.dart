import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FlagContainersScreen(),
  ));
}

class FlagContainersScreen extends StatelessWidget {
  const FlagContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('تقسيم المساحة'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          // الحاوية الأولى - أحمر
          Expanded(
            child: Container(
              color: Colors.red,
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // الحاوية الثانية - أبيض
          Expanded(
            child: Container(
              color: Colors.white,
              child: const Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // الحاوية الثالثة - أسود
          Expanded(
            child: Container(
              color: Colors.black,
              child: const Center(
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
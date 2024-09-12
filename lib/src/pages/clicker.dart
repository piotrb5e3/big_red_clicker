import 'package:big_red_clicker/src/pages/about.dart';
import 'package:flutter/material.dart';

class ClickerPage extends StatefulWidget {
  const ClickerPage({super.key});

  @override
  State<ClickerPage> createState() => _ClickerPageState();
}

class _ClickerPageState extends State<ClickerPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Big Red Clicker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings), // Cog icon
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()), // Navigate to the new page
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: _incrementCounter, // Increase counter when button is pressed
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: const Size(200, 200),
                shape: const CircleBorder()
              ),
              child: Text(
                '$_counter',
                style: const TextStyle(fontSize: 32, color: Colors.white),
              ),
            ),
            const SizedBox(height: 50),
            TextButton(
              onPressed: _resetCounter,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(8)
              ),
              child: const Text(
                'Reset',
                style: TextStyle(fontSize: 16, color: Colors.grey)
              ))
          ],
        ),
      ),
    );
  }
}
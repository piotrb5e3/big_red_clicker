import 'package:flutter/material.dart';

import 'pages/clicker.dart';

class ClickerApp extends StatelessWidget {
  const ClickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Big Red Clicker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ClickerPage(),
    );
  }
}
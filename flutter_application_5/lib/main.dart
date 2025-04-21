import 'package:flutter/material.dart';
import 'simple_list.dart';
import 'infinity_list.dart';
import 'infinity_math_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 5 Lists',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Список элементов')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Простой список (0000, 0001, 0010)'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SimpleList()),
            ),
          ),
          ListTile(
            title: const Text('Бесконечный список (строка 1, 2, ...)'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const InfinityList()),
            ),
          ),
          ListTile(
            title: const Text('Степени двойки (2^1 = 2 ...)'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const InfinityMathList()),
            ),
          ),
        ],
      ),
    );
  }
}
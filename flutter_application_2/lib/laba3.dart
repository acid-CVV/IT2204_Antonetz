import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.cyan, // Цвет темы
      ),
      home: const IncrementScreen(),
    );
  }
}

class IncrementScreen extends StatefulWidget {
  const IncrementScreen({super.key});

  @override
  _IncrementScreenState createState() => _IncrementScreenState();
}

class _IncrementScreenState extends State<IncrementScreen> {
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

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Инкремент',
          style: TextStyle(color: Colors.black), // Чёрный текст
        ),
        backgroundColor: Colors.cyan, // Цвет AppBar
        elevation: 0, // Убираем тень
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Значение инкремента:',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrement,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(50, 50),
                  ),
                  child: const Text('-', style: TextStyle(fontSize: 24)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _increment,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(50, 50),
                  ),
                  child: const Text('+', style: TextStyle(fontSize: 24)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: _reset,
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
              ),
              child: const Text('Сбросить', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

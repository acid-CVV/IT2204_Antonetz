import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  const SimpleList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ['0000', '0001', '0010'];

    return Scaffold(
      appBar: AppBar(title: const Text('Список элементов')),
      body: ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemBuilder: (context, index) => ListTile(
          title: Text(items[index]),
        ),
      ),
    );
  }
}
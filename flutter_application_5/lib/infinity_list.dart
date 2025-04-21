import 'package:flutter/material.dart';

class InfinityList extends StatelessWidget {
  const InfinityList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Список элементов')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final displayIndex = index + 1;
          return Column(
            children: [
              ListTile(
                title: Text('строка $displayIndex'),
              ),
              const Divider(height: 1),
            ],
          );
        },
      ),
    );
  }
}
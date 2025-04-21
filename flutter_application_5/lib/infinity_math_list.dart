import 'package:flutter/material.dart';
import 'dart:math';

class InfinityMathList extends StatelessWidget {
  const InfinityMathList({super.key});

  BigInt _power(int n) {
    return BigInt.from(2).pow(n);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Список элементов')),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final powerIndex = index + 1;
          return Column(
            children: [
              ListTile(
                title: Text("2 ^ $powerIndex = ${_power(powerIndex)}")
              ),
              const Divider(height: 1),
            ],
          );
        },
      ),
    );
  }
}
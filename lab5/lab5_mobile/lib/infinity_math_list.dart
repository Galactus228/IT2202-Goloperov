import 'package:flutter/material.dart';
import 'dart:math';

class InfinityMathList extends StatelessWidget {
  const InfinityMathList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Список элементов',
          style: TextStyle(color: Colors.white), // Белый цвет текста
        ),
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white), // Белые иконки (назад)
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          int value = pow(2, index).toInt();
          return ListTile(title: Text('2 ^ $index = $value'));
        },
      ),
    );
  }
}
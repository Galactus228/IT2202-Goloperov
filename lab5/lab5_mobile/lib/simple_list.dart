import 'package:flutter/material.dart';

class SimpleList extends StatelessWidget {
  const SimpleList({super.key});

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
      body: ListView(
        children: const [
          ListTile(title: Text('0000')),
          ListTile(title: Text('0001')),
          ListTile(title: Text('0010')),
        ],
      ),
    );
  }
}
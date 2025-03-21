import 'package:flutter/material.dart';

class InfinityList extends StatelessWidget {
  const InfinityList({super.key});

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
          return ListTile(title: Text('строка $index'));
        },
      ),
    );
  }
}
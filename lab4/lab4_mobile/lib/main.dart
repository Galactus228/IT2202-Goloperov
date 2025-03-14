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
      title: 'Общежития КубГАУ',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DormitoryScreen(),
    );
  }
}

class DormitoryScreen extends StatelessWidget {
  const DormitoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Общежития КубГАУ'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Image.asset('assets/kubgau1.jpg', fit: BoxFit.cover),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Общежитие №20',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'Краснодар, ул. Калинина, 13',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


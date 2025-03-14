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

class DormitoryScreen extends StatefulWidget {
  const DormitoryScreen({super.key});

  @override
  State<DormitoryScreen> createState() => _DormitoryScreenState();
}

class _DormitoryScreenState extends State<DormitoryScreen> {
  int likes = 27;

  void _incrementLikes() {
    setState(() {
      likes++;
    });
  }

  void _makeCall() {
    print('Идет вызов....');
  }

  void _showRoute() {
    print('Точка1 -> Точка2 -> Точка3 -> Общежитие №20');
  }

  void _share() {
    print('Отправлено');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Общежития КубГАУ'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Image.asset('assets/dorm.jpg', fit: BoxFit.cover),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite, color: Colors.red),
                    onPressed: _incrementLikes,
                  ),
                  Text('$likes'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.call, color: Colors.green),
                    onPressed: _makeCall,
                  ),
                  const Text('Позвонить'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.directions, color: Colors.green),
                    onPressed: _showRoute,
                  ),
                  const Text('Маршрут'),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.share, color: Colors.green),
                    onPressed: _share,
                  ),
                  const Text('Поделиться'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}



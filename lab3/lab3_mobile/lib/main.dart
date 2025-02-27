import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Инкремент'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() { // Добавлено: Метод для уменьшения счетчика
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Значение инкремента:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20), // Добавлено: Пространство между элементами
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton( // Добавлено: Кнопка уменьшения
                  icon: const Icon(Icons.remove),
                  onPressed: _decrementCounter,
                  tooltip: 'Уменьшить',
                ),
                IconButton( // Добавлено: Кнопка увеличения (заменяет FloatingActionButton)
                  icon: const Icon(Icons.add),
                  onPressed: _incrementCounter,
                  tooltip: 'Увеличить',
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: null, // Убрано: FloatingActionButton больше не нужен
    );
  }
}
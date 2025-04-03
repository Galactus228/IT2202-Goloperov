import 'package:flutter/material.dart';

void main() {
  runApp(AreaCalculatorApp());
}

class AreaCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AreaCalculatorScreen(),
    );
  }
}

class AreaCalculatorScreen extends StatefulWidget {
  @override
  _AreaCalculatorScreenState createState() => _AreaCalculatorScreenState();
}

class _AreaCalculatorScreenState extends State<AreaCalculatorScreen> {
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  String _resultText = 'Задайте параметры';

  void _calculateArea() {
    double? width = double.tryParse(_widthController.text);
    double? height = double.tryParse(_heightController.text);
    if (width != null && height != null) {
      setState(() {
        _resultText = 'S = $width * $height = ${width * height}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Калькулятор площади', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ширина (мм):'),
            TextField(
              controller: _widthController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            Text('Высота (мм):'),
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _calculateArea,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Text('Вычислить', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Center(child: Text(_resultText, style: TextStyle(fontSize: 18))),
          ],
        ),
      ),
    );
  }
}


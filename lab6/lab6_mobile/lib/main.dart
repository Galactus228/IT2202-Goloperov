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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _resultText = 'Задайте параметры';

  String? _validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return 'Введите значение';
    }
    final doubleValue = double.tryParse(value);
    if (doubleValue == null || doubleValue <= 0) {
      return 'Введите значение';
    }
    return null;
  }

  void _calculateArea() {
    if (_formKey.currentState!.validate()) {
      double width = double.parse(_widthController.text);
      double height = double.parse(_heightController.text);
      double area = width * height;

      setState(() {
        _resultText = 'S = $width * $height = $area';
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
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ширина (мм):'),
              TextFormField(
                controller: _widthController,
                keyboardType: TextInputType.number,
                validator: _validateInput,
              ),
              SizedBox(height: 10),
              Text('Высота (мм):'),
              TextFormField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                validator: _validateInput,
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: _calculateArea,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  ),
                  child: Text('Вычислить', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 20),
              Center(child: Text(_resultText, style: TextStyle(fontSize: 18))),
            ],
          ),
        ),
      ),
    );
  }
} 



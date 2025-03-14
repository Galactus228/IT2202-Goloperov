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

  void _sendRoute() {
    print('Маршрут: Точка1 -> Точка2 -> Точка3 -> Конечный объект');
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                'DEBUG',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/kubgau1.jpg', fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
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
                  Column(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.favorite, color: Colors.red, size: 32),
                        onPressed: _incrementLikes,
                      ),
                      Text('$likes', style: const TextStyle(fontWeight: FontWeight.bold)),
                    ],
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
                      icon: const Icon(Icons.call, color: Colors.green, size: 36),
                      onPressed: _makeCall,
                    ),
                    const Text('Позвонить', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.send, color: Colors.green, size: 36),
                      onPressed: _sendRoute,
                    ),
                    const Text('Маршрут', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.share, color: Colors.green, size: 36),
                      onPressed: _share,
                    ),
                    const Text('Поделиться', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Студенческий городок или так называемый кампус Кубанского ГАУ состоит из двадцати общежитий, в которых проживает более 8000 студентов, что состав- ляет 96% от всех нуждающихся. Студенты первого курса обеспечены местами в об- щежитии полностью. В соответствии с Положением о студенческих общежитиях университета, при поселении между администрацией и студентами заключается договор найма жилого помещения. Воспитательная работа в общежитиях направ- лена на улучшение быта, соблюдение правил внутреннего распорядка, отсутствия асоциальных явлений в молодежной среде. Условия проживания в общежитиях университетского кампуса полностью отвечают санитарным нормам и требова- ниям: наличие оборудованных кухонь, душевых комнат, прачечных, читальных за- лов, комнат самоподготовки, помещений для заседаний студенческих советов и наглядной агитации. С целью улучшения условий быта студентов активно работает система студенческого самоуправления - студенческие советы организуют всю работу по самообслуживанию.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




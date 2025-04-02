import 'package:flutter/material.dart';

void main() {
  runApp(const DormitoryApp());
}

class DormitoryApp extends StatelessWidget {
  const DormitoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
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
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
      likes += isLiked ? 1 : -1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Общежития КубГАУ')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/dormitory.jpg', fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Общежитие №20',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border, color: Colors.red),
                                onPressed: toggleLike,
                              ),
                              Text('$likes', style: const TextStyle(fontSize: 18)),
                            ],
                          ),
                        ],
                      ),
                      const Text(
                        'Краснодар, ул. Калинина, 13',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildActionButton(Icons.phone, 'ПОЗВОНИТЬ'),
                          _buildActionButton(Icons.map, 'МАРШРУТ'),
                          _buildActionButton(Icons.share, 'ПОДЕЛИТЬСЯ'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Студенческий городок КубГАУ состоит из 12 общежитий, в которых проживает более 8000 студентов. '
                        'Это 96% от всех нуждающихся. Студенты первого курса обеспечиваются местами в общежитии.',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.green),
        const SizedBox(height: 5),
        Text(
          label,
          style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

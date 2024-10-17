
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IvyQuiño_MidtermExam',
      home: MidtermExamScreen(),
    );
  }
}

class MidtermExamScreen extends StatefulWidget {
  @override
  _MidtermExamScreenState createState() => _MidtermExamScreenState();
}

class _MidtermExamScreenState extends State<MidtermExamScreen> {
 
  final List<Map<String, dynamic>> items = [
    {"name": "Nike Air Max", "details": "Nike's popular Air Max series.", "added": false},
    {"name": "Adidas Ultraboost", "details": "Adidas high-performance running shoe.", "added": false},
    {"name": "Puma Suede", "details": "Classic Puma design with suede finish.", "added": false},
    {"name": "Reebok Club C", "details": "Reebok's vintage tennis-inspired shoe.", "added": false},
    {"name": "New Balance 990", "details": "New Balance's premium lifestyle sneaker.", "added": false},
    {"name": "Vans Old Skool", "details": "Vans skateboarding classic.", "added": false},
    {"name": "Converse Chuck Taylor", "details": "Iconic Converse high-top sneaker.", "added": false},
    {"name": "ASICS Gel-Kayano", "details": "ASICS stability running shoe.", "added": false},
    {"name": "Under Armour Curry 7", "details": "Basketball shoe by Under Armour.", "added": false},
    {"name": "Fila Disruptor", "details": "Chunky retro-inspired shoe by Fila.", "added": false},
  ];

  
  void showDetails(String details) {
    print(details);
  }

 
  void addItem(int index) {
    setState(() {
      items[index]['added'] = !items[index]['added'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IvyQuiño_MidtermExam'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: items[index]['added'] ? Colors.greenAccent : Colors.white,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index]['name'],
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 8.0),
                                Row(
                                  children: [
                                    TextButton(
                                      onPressed: () => showDetails(items[index]['details']),
                                      child: Text("Details"),
                                    ),
                                    SizedBox(width: 8.0),
                                    ElevatedButton(
                                      onPressed: () => addItem(index),
                                      child: Text(items[index]['added'] ? "Added" : "Add"),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: items[index]['added'] ? Colors.blueGrey : Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

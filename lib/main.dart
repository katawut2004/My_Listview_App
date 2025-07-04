import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // สร้าง list ของชื่อไฟล์รูปภาพ
    final List<String> images = List.generate(
        6, (index) => 'assets/images/${(index + 1).toString().padLeft(2, '0')}.jpg');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("KATAWUT 105"),
          backgroundColor: const Color.fromARGB(255, 255, 225, 114),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(images.length, (index) {
                  return Card(
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text('รายการที่ ${index + 1}'),
                    subtitle: const Text('เพื่อเติม "คลิก"'),
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

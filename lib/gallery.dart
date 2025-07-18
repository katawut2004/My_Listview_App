import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyGalleryPage extends StatefulWidget {
  const MyGalleryPage({super.key});

  @override
  State<MyGalleryPage> createState() => _MyGalleryPageState();
}

class _MyGalleryPageState extends State<MyGalleryPage> {
  final List<String> images = List.generate(
      6, (index) => 'assets/images/${(index + 1).toString().padLeft(2, '0')}.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('แกลเลอรี่ทั้งหมด'),
        backgroundColor: const Color.fromARGB(255, 255, 225, 114),
      ),
      body: GridView.count(
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
    );
  }
}

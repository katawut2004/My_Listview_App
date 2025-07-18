import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_gall/components/drawer.dart';

import 'gallery.dart';
import 'list.dart';
import 'components/drawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = List.generate(
        6, (index) => 'assets/images/${(index + 1).toString().padLeft(2, '0')}.jpg');

    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("KATAWUT 105"),
          backgroundColor: const Color.fromARGB(255, 255, 225, 114),
        ),
        drawer: const MyDrawer(),
        body: SingleChildScrollView( 
          child: Column(
            children: [
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(const MyGalleryPage());
                },
                child: const Text('แสดงทั้งหมด'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 300, 
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
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(const MyListPage());
                },
                child: const Text('แสดงทั้งหมด'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200, 
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
      ),
    );
  }
}

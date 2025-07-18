import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:my_gall/gallery.dart';
import 'package:my_gall/list.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); 
            },
          ),
          ListTile(
            title: const Text('Gallery'),
            onTap: () {
              Navigator.pop(context); 
              Get.to(const MyGalleryPage());
            },
          ),
          ListTile(
            title: const Text('Product'),
            onTap: () {
              Navigator.pop(context); 
              Get.to(const MyListPage());
            },
          ),
        ],
      ),
    );
  }
}

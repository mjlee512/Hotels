import 'package:capstone/pages/location_controller.dart';
import 'package:capstone/pages/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(LocationController());
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MapScreen(),
    );
  }
}

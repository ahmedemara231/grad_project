import 'package:flutter/material.dart';
import 'package:graduation_project/First_Screen/1st_screen.dart';
// import 'package:graduation_project/First_Screen/4_screens/Notifications.dart';
// import 'package:graduation_project/First_Screen/4_screens/camera.dart';
// import 'package:graduation_project/Second_screen/container_model.dart';
// import 'package:graduation_project/test.dart';
bool darkMode = false;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}


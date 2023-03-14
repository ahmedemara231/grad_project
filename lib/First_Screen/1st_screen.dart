import 'package:flutter/material.dart';
import 'package:graduation_project/First_Screen/4_screens/Notifications.dart';
import 'package:graduation_project/First_Screen/4_screens/camera.dart';
import 'package:graduation_project/First_Screen/4_screens/home.dart';
import 'package:graduation_project/First_Screen/4_screens/my_account.dart';
import 'package:hexcolor/hexcolor.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  List<Widget>screens =
  [
    MyAccount(),
    Camera(),
    Home(),
    Notifications(),
  ];
  int currentIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index)
        {
         setState(() {
           currentIndex = index;
         });
        },
        currentIndex: currentIndex ,
        selectedItemColor: HexColor('55AD5C'),
        unselectedItemColor: Colors.grey,
        items: const [
           BottomNavigationBarItem(icon: Icon(Icons.person),label:'My account'),
           BottomNavigationBarItem(icon: Icon(Icons.camera_alt),label: 'photo'),
           BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.doorbell_outlined),label: 'Notices'),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}

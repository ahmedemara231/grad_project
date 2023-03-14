import 'package:flutter/material.dart';
import 'package:graduation_project/main.dart';


class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Test'),
      actions: [
        IconButton(
            onPressed: ()
            {
              setState(() {
                darkMode = !darkMode;
              });
            }, icon:darkMode? Icon(Icons.sunny) : Icon(Icons.nights_stay)),
      ],
    ),
    );
  }
}

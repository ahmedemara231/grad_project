import 'package:flutter/material.dart';

class ContainerModel extends StatelessWidget {
  ContainerModel({
    Key? key,
    required this.icon,
    required this.text,
    required this.text2,
    required this.text3,
    required this.containerColor,
  });
  var icon;
  Widget text;
  Widget text2;
  Widget text3;
  Color containerColor;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          border: const Border(
            top: BorderSide(color: Colors.green, width: 2),
            right: BorderSide(color: Colors.green, width: 2),
            bottom: BorderSide(color: Colors.green, width: 2),
            left: BorderSide(color: Colors.green, width: 2),
          ),
        ),
        width: MediaQuery.of(context).size.width / 2.8,
        height: MediaQuery.of(context).size.width / 2.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text3,
            icon,
            text,
            text2,
          ],
        ),
      ),
    );
  }
}

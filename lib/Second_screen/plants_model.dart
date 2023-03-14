import 'package:flutter/material.dart';

class PlantModel extends StatelessWidget {
   PlantModel({Key? key,
     required this.imageName,
     required this.text,
     required this.onPressed
   });

   String imageName;
   String text ;
   Icon arrowIcon = const Icon(Icons.arrow_forward_ios_outlined);
   VoidCallback onPressed;

   @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: const Border(
                left: BorderSide(color: Colors.green,width: 2),
                top: BorderSide(color: Colors.green,width: 2),
                right: BorderSide(color: Colors.green,width: 2),
                bottom: BorderSide(color: Colors.green,width: 2),
              )
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 120,
                    height: 120,
                    child: Image.network(imageName)),
              ),
              const Spacer(),
              Text( text,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const Spacer(flex: 6,),
              InkWell(
                onTap: onPressed,
                  child: arrowIcon
              ),
            ],
          ),
        ),
    );
  }
}

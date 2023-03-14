import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_rounded),
          color: Colors.black,
        ),
        title: const Text('Notifications',style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.warning,color: Colors.red,size: 40,),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Alert',style: TextStyle(fontSize: 20,fontWeight :FontWeight.w500, color: Colors.red),),
                    Text('Text,Text,Text,Text,Text,Text')
                  ],
                ),
              ],
            ),
            const SizedBox(height: 35,),
            Row(
              children: [
                const Icon(Icons.sd_card_alert_outlined,size: 35,),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Suggestion',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                      ),),
                    Text(
                      'Text,Text,Text, Text,Text,Text,Text,Text,',
                       maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 35,),

            Row(
              children:  [
                const Icon(Icons.warning,color: Colors.red,size: 40,),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Alert',style: TextStyle(fontSize: 20,fontWeight :FontWeight.w500, color: Colors.red),),
                    Text('Text,Text,Text,Text,Text,Text')
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

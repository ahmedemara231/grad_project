import 'package:flutter/material.dart';
import 'package:graduation_project/Second_screen/Navigate_from_home.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white70,
        title: const Padding(
          padding:  EdgeInsets.only(left: 20),
          child:  Text('Hello',style: TextStyle(color: Colors.black),),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height/7,
            color: HexColor('55AD5C'),
            child: Row(
              children: [
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 15,left: 29,bottom: 10),
                      child: Text(
                        'Mansoura, Egypt',
                        style: TextStyle(
                            fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                    ),
                    Text(
                      '16 C',
                      style: TextStyle(
                          fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),

                  ],
                ),
                //Image.asset('')
                 Padding(
                   padding: const EdgeInsets.only(left: 150,bottom: 20),
                   child: Icon(
                     Icons.cloudy_snowing,
                     size: 70,
                     color: Colors.white,
                   ),
                 ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children:  [
                const Text(
                  'Your Green House',
                  style: TextStyle(
                      fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: TextStyle(fontSize: 18,color: HexColor('55AD5C')),)),
              ],
            ),
          ),
          Card(
            elevation: 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180,bottom: 10,top: 10),
                  child: Text(
                      'Masr Greenhouse',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(
                        context, MaterialPageRoute(
                      builder: (context) => Home2(),
                     )
                    );
                  },
                  child: Container(
                      width: double.infinity  ,
                      child: Image.asset(
                        'images/Mask group.png',
                        fit: BoxFit.fitWidth,
                      )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Icon(Icons.thermostat),
                          Text('18 C'),
                        ],
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width/4,
                        height: 10,
                      ),

                      Column(
                        children: [
                         const Icon(Icons.water_drop_outlined),
                          Text('22 %'),
                        ],
                      ),

                      SizedBox(
                        width: MediaQuery.of(context).size.width/4,
                        height: 10,
                      ),

                      Column(
                        children: [
                          const Icon(Icons.sunny),
                          Text('on'),
                        ],
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

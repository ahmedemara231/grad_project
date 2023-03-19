import 'package:flutter/material.dart';
import 'package:graduation_project/Climate&Watering_screens/Climate_screen.dart';
import 'package:graduation_project/Second_screen/Navigate_from_Home2.dart';
import 'package:graduation_project/Second_screen/container_model.dart';
import 'package:graduation_project/Second_screen/plants_model.dart';

import 'package:hexcolor/hexcolor.dart';

class Home2 extends StatefulWidget {
  Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  int currentIndex = -1;
  int currentIndex2 = -1;
  int buttons = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: ()
                        {
                          Navigator.pop(context);
                        }, icon:const Icon(Icons.arrow_back,color: Colors.black,)),
                    const Spacer(),
                    IconButton(
                        onPressed: ()
                        {
                          Navigator.push(
                              context,MaterialPageRoute(
                            builder: (context) => Home3(),
                          )
                          );
                        }, icon: const Icon(Icons.settings)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Container(
                                color:  HexColor('55AD5C'),
                                child: Text('2 plants')
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height/25,
                          ),
                          Text(
                            'Masr Greenhouse',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          ),
                          Text('Mansoura , Egypt',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                      Spacer(),
                      Text('خريطة')
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  color: HexColor('55AD5C'),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.wb_cloudy_outlined,color: Colors.white,),
                            Text('Cloudy',style: TextStyle(color: Colors.white),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Icon(Icons.wind_power_rounded,color: Colors.white,),
                            Text('Wind Speed',style: TextStyle(color: Colors.white),),
                            Text('8 m/s',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Icon(Icons.water_drop_outlined,color: Colors.white,),
                            Text('Precipitation rate',style: TextStyle(color: Colors.white),),
                            Text('20%',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TabBar(
                    indicatorPadding: EdgeInsets.only(top: 15),
                      indicatorColor: Colors.green,
                      onTap: (index)
                      {
                        setState(() {
                          currentIndex2 = index;
                        });
                      },
                      tabs:
                      [
                        Text(
                          'Smart Greenhouse',
                          style: TextStyle(
                              color: currentIndex2 == 0 ? Colors.green : Colors.black,
                              fontSize: 18
                          ),
                        ),
                        Text(
                          'Plants',
                          style: TextStyle(
                              color: currentIndex2 == 1 ? Colors.green : Colors.black,
                              fontSize: 18
                          ),
                        ),
                      ]
                  ),
                ),
                Expanded(
                  child: TabBarView(
                      children:
                      [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 InkWell(
                                   onTap: ()
                                   {
                                     Navigator.push(
                                         context, MaterialPageRoute(
                                       builder: (context) => ClimateScreen(),
                                       ),
                                     );
                                   },
                                   child: ContainerModel(
                                       icon: const Icon(Icons.thermostat,color: Colors.green,),
                                       text: const Text('Climate',style: TextStyle(color: Colors.green),),
                                       text2: Text('18 C',style: TextStyle(color: Colors.grey),),
                                       text3: Text(''),
                                       containerColor: Colors.white
                                   ),
                                 ),
                                  SizedBox(
                                   height: MediaQuery.of(context).size.height/10,
                                 ),
                                  InkWell(
                                    onTap: ()
                                    {
                                      setState(() {
                                        currentIndex = 0;
                                      });
                                    },
                                    child: ContainerModel(
                                      icon: Icon(
                                        Icons.sunny,
                                        color: currentIndex == 0? Colors.white : Colors.green,
                                      ),
                                      text3: Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/5),
                                        child: Text(
                                          currentIndex == 0 ? 'ON' : 'OFF',
                                          style: TextStyle(
                                            color: currentIndex == 0? Colors.white : Colors.green,
                                          ),
                                        ),
                                      ),
                                      text: Text('Lighting',style: TextStyle(color: currentIndex == 0? Colors.white : Colors.green,),),
                                      text2: Text('12 Watt',style: TextStyle(color: currentIndex == 0? Colors.white : Colors.green,),),
                                      containerColor: currentIndex == 0? Colors.green : Colors.white,),
                                  ),                                ],
                              ),

                              const Spacer(),

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {},

                                    child: ContainerModel(
                                        icon: const Icon(Icons.water_drop_outlined,color: Colors.green,),
                                        text: const Text('Watering',style: TextStyle(color: Colors.green),),
                                        text2: Text('2L',style: TextStyle(color: Colors.grey),),
                                        text3: Padding(
                                          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/5),
                                          child: Text('OFF'),
                                        ),
                                        containerColor: Colors.white
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height/10,
                                  ),
                                  InkWell(
                                    onTap: ()
                                    {
                                      setState(() {
                                        currentIndex = 1;
                                      });
                                    },
                                    child: ContainerModel(
                                      icon: Icon(
                                        Icons.wind_power,
                                        color: currentIndex == 1? Colors.white : Colors.green,
                                      ),
                                      text3: Padding(
                                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/5),
                                        child: Text(
                                          currentIndex == 1 ?'ON' : 'OFF',
                                          style: TextStyle(
                                            color: currentIndex == 1? Colors.white : Colors.green,
                                          ),
                                        ),
                                      ),
                                      text: Text('Ventilation',style: TextStyle(color: currentIndex == 1? Colors.white : Colors.green,),),
                                      text2: Text('5m/s',style: TextStyle(color: currentIndex == 1? Colors.white : Colors.green,),),
                                      containerColor: currentIndex == 1? Colors.green : Colors.white,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            PlantModel(
                              onPressed: () {},
                                imageName: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS_0EYnx_4ksb4klrRCk7vZ9RSHrjfgb-1-g&usqp=CAU',
                                text: 'Peas Plant'
                            ),
                            PlantModel(
                              onPressed: () {},
                                imageName: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8Da6sduPCtZTFk0ZkO8LbL637SA0KKJSgNA&usqp=CAU',
                                text: 'Tomato Plant'
                            ),
                          ],
                        ),
                      ]
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

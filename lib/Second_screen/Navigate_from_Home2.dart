import 'package:flutter/material.dart';

class Home3 extends StatelessWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
            onPressed: ()
            {
              Navigator.pop(context);
            }, icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'Greenhouse Settings',
        style: TextStyle(color: Colors.black
         ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children:  [
            InkWell(
              onTap: () {},
              child:const ListTile(
                leading: Icon(Icons.error_outline,size: 40,),
                title: Text('Greenhouse Information',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                ),),
                subtitle: Text('Name, ID, Location..etc',style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15
                ),),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                leading: Icon(Icons.add_road,size: 40,),
                title: Text('Greenhouse parameters',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),
                subtitle: Text('Temperature, Humidity..etc',style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15
                ),),
              ),
            ),
            InkWell(
              onTap: ()
              {
                showDialog(context: context, builder: (context) =>  AlertDialog(
                  title:const Text(
                      'Are you sure you want to delete this, you will lose all information and access, Do you want to continue ?'
                  ),
                  actions: [
                    MaterialButton(
                      onPressed: ()
                      {
                        Navigator.pop(context);
                      },
                    child: const Text('Cancel'),
                    color: Colors.grey,
                    ),
                    MaterialButton(
                      onPressed: ()
                      {
                        Navigator.pop(context);
                      },
                      child:const Text('Delete'),
                      color: Colors.red,
                    ),
                  ],
                ),);
              },
              child: const ListTile(
                leading: Icon(Icons.auto_delete_sharp,size: 40,color: Colors.red,),
                title: Text('Delete your Greenhouse',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

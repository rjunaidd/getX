import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Views/screen_one.dart';
import 'package:getx/Views/screen_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.grey,
        title:const Text("getX"),
      ) ,
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: (){
                Get.defaultDialog(
                  title: "Instagram",
                  titlePadding: EdgeInsets.only(top: 20),
                  middleText: "Do you follow me on instagram",
                  contentPadding: EdgeInsets.all(30),
                  confirm: TextButton(onPressed: (){
                    Get.back();
                  },
                      child: Text("Confirm"),
                  ),
                  cancel: TextButton(
                      onPressed: (){}, 
                      child: Text("Cancel"),
                  ),
                );
              },
              title: Text("Junaid , JD"),
              subtitle: Text("Follow me on instagram"),
              trailing: Icon(Icons.person),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode_outlined),
                      title: Text('Light Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                          leading: Icon(Icons.dark_mode_outlined),
                      title: Text('Dark Theme'),
                        )
                      ],
                    ),
                  )
                );
              },
              title: Text("JD"),
              subtitle: Text("getX bottom Sheet"),
              trailing: Icon(Icons.hourglass_bottom),
            ),
          ),

          TextButton(
              onPressed: (){
                Get.to(ScreenOne());
              },
              child: Text('Screen One' ,style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
              ),
              ),
          ),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onDoubleTap: (){
              Get.to(ScreenTwo());
            },
            child: Container(
              height:70,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 50,
                    offset: Offset(0, 10),
                    spreadRadius: 20
                  )
                ]
              ),
              child: Center(
                child: Text("Screen Two" ,textScaler: TextScaler.noScaling , style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey.shade50,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.account_tree_outlined),
          onPressed: (){
            Get.snackbar(
                "Junaid , JD",
                "Follow on me ",
            duration: Duration(
              seconds: 10
            ),
              
              mainButton: TextButton(
                  onPressed:(){
                    print('Follow');
                  },
                  child: Icon(Icons.gamepad)
              )
            );
          }
      ),
    );
  }
}


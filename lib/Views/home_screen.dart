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
      body: Center(
        child: Column(
          children: [
            Card(
              child: ListTile(
                onTap: (){
                  Get.defaultDialog(
                    title: "Instagram",
                    titlePadding:const EdgeInsets.only(top: 20),
                    middleText: "Do you follow me on instagram",
                    contentPadding:const EdgeInsets.all(30),
                    confirm: TextButton(onPressed: (){
                      Get.back();
                    },
                        child:const Text("Confirm"),
                    ),
                    cancel: TextButton(
                        onPressed: (){},
                        child:const Text("Cancel"),
                    ),
                  );
                },
                title:const Text("Junaid , JD"),
                subtitle:const Text("Follow me on instagram"),
                trailing:const Icon(Icons.person),
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
                            leading:const Icon(Icons.light_mode_outlined),
                        title:const Text('Light Theme'),
                            onTap: (){
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            onTap: (){
                              Get.changeTheme(ThemeData.dark());
                            },
                            leading:const Icon(Icons.dark_mode_outlined),
                        title:const Text('Dark Theme'),
                          )
                        ],
                      ),
                    )
                  );
                },
                title:const Text("JD"),
                subtitle:const Text("getX bottom Sheet"),
                trailing:const Icon(Icons.hourglass_bottom),
              ),
            ),

            TextButton(
                onPressed: (){
                  Get.to(const ScreenOne());
                },
                child:const Text('Screen One' ,style: TextStyle(
                    fontSize: 30,
                    color: Colors.black
                ),
                ),
            ),
            const SizedBox(
              height: 60,
            ),
            InkWell(
              onDoubleTap: (){
                Get.to(const ScreenTwo());
                // Get.toNamed("/screenOne");
              },
              child: Container(
                height:70,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow:const [
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
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.account_tree_outlined),
          onPressed: (){
            Get.snackbar(
                "Junaid , JD",
                "Follow on me ",
            duration:const Duration(
              seconds: 10
            ),
              
              mainButton: TextButton(
                  onPressed:(){
                    print('Follow');
                  },
                  child:const Icon(Icons.gamepad)
              )
            );
          }
      ),
    );
  }
}


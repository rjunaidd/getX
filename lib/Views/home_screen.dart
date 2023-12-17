import 'package:flutter/material.dart';
import 'package:get/get.dart';

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


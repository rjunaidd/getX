import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: (){
                Get.back();
              },
              child: Text('Back to Home Screen',style: TextStyle(
                  fontSize: 30,
                  color: Colors.black
              ),)
          ),
        ],
      ),
    );
  }
}

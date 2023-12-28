import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
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

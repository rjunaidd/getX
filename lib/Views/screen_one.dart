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
    final Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              height: Get.height * 0.23,
              width: Get.width * 0.5,
              decoration: BoxDecoration(
                color: Colors.red.shade300
              ),
              child:const Center(
                child: Text('CENTER', style: TextStyle(
                fontSize: 30
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

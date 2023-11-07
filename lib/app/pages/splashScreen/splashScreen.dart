import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Get.offAndToNamed('/auth/login');
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('assets/ic_app.png'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gv_key_project/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GetMaterialApp(
            initialRoute: '/',
            debugShowCheckedModeBanner: false,
            getPages: pageRoute,
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xff0f0f0f),
            )));
  }
}

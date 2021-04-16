import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx4/screens/fourth.dart';
import 'package:getx4/screens/home.dart';
import 'package:getx4/screens/second.dart';
import 'package:getx4/screens/third.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Home(),
      theme: ThemeData(
        accentColor: Colors.purpleAccent,
        primaryColor: Colors.purple,
      ),
      getPages: [
        GetPage(name: '/', page: () => Home()),
        GetPage(name: '/second', page: () => Second()),
        GetPage(name: '/third', page: () => Third(),
          transition: Transition.zoom,
        ),
        GetPage(name: "/fourth", page: () => Fourth()),
      ],

    );
  }
}
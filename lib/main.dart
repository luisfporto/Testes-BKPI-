// ignore_for_file: prefer_const_constructors
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:fruithub/login_page.dart';
import 'package:get/get.dart';

import 'SplashScreen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        fontFamily: 'Brandon',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

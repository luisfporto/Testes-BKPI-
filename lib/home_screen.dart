// @dart=2.9
import 'package:flutter/material.dart';
import 'package:fruithub/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Body(),
    );
  }
}

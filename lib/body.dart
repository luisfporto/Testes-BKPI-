// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruithub/details_ScreenQuinoaSalad.dart';
import 'package:fruithub/details_screenHoneyCombo.dart';
import 'package:fruithub/details_screenHoneyLimeSalad.dart';
import 'package:fruithub/details_screenMangoSalad.dart';
import 'package:fruithub/details_screenTropicalFruitSalad.dart';

import 'details_screenMangoCombo.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(0, 217, 217, 217)),
        child: Column(
          children: [
            Container(
              width: width * 1,
              height: height * 0.08,
              decoration: BoxDecoration(color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 50, 0),
              child: Row(
                children: [
                  RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                        text: 'Olá,',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Brandon',
                          color: Colors.black,
                        ),
                      )),
                  RichText(
                      textAlign: TextAlign.start,
                      text: const TextSpan(
                        text: ' qual combo de salada de frutas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Brandon',
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 94, 0),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: RichText(
                    textAlign: TextAlign.start,
                    text: const TextSpan(
                      text: 'você gostaria hoje?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Brandon',
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white)),
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: 'Procure por combos de salada de frutas',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[300],
                            size: 20,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                Flexible(
                    flex: 1,
                    child: Container(
                      child: Icon(
                        Icons.manage_search,
                        color: Colors.black,
                        size: 20,
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 94, 0),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: RichText(
                    text: const TextSpan(
                  text: 'Combos Recomendados',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Brandon',
                    color: Colors.black,
                  ),
                )),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCard(
                    imageFont:
                        'assets/images/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1-1.png',
                    price: 'R\$ 45,00',
                    title: 'Honey Lime Combo',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreenHoneyLime()));
                    },
                  ),
                  ItemCard(
                    imageFont:
                        'assets/images/Glowing-Berry-Fruit-Salad-8-720x720-removebg-preview 1-1.png',
                    price: 'R\$ 35,00',
                    title: 'Berry Mango Combo',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreenMangoCombo()));
                    },
                  ),
                  ItemCard(
                    imageFont:
                        'assets/images/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview 1.png',
                    price: 'R\$ 45,00',
                    title: 'Quinoa Fruit Salad',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreenQuinoaSalad()));
                    },
                  ),
                  ItemCard(
                    imageFont:
                        'assets/images/Best-Ever-Tropical-Fruit-Salad8-WIDE-removebg-preview 1.png',
                    price: 'R\$ 30,00',
                    title: 'Tropical Fruit Salad',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreenTropicalFruitSalad()));
                    },
                  ),
                  ItemCard(
                    imageFont:
                        'assets/images/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1-1.png',
                    price: 'R\$ 30,00',
                    title: 'Honey Lime Salad',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreenHoneyLimeSalad()));
                    },
                  ),
                  ItemCard(
                    imageFont:
                        'assets/images/Glowing-Berry-Fruit-Salad-8-720x720-removebg-preview 1-1.png',
                    price: 'R\$ 30,00',
                    title: 'Berry Mango Salad',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreenMangoSalad()));
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 94, 0),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: RichText(
                    text: const TextSpan(
                  text: 'Promoção do Dia',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Brandon',
                    color: Colors.black,
                  ),
                )),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCard(
                    imageFont:
                        'assets/images/Glowing-Berry-Fruit-Salad-8-720x720-removebg-preview 1-1.png',
                    price: 'R\$ 35,00',
                    title: 'Berry Mango Combo',
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreenMangoCombo()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class ItemCard extends StatelessWidget {
  final String title, price, imageFont;
  final Function press;
  const ItemCard({
    Key key,
    this.title,
    this.price,
    this.imageFont,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 20,
                color: Color(0xFFB0CCE1).withOpacity(0.32))
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                        imageFont,
                      ))),
                ),
                Text(title),
                Text(
                  price,
                  style: TextStyle(color: Color(0xFFFFA451)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

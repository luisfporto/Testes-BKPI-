// @dart=2.9

import 'package:flutter/material.dart';
import 'package:fruithub/body.dart';
import 'package:get/get.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsScreenQuinoaSalad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFA451),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFA451),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: Colors.white,
            )),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_basket))
        ],
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ItemImage(
          imgSrc:
              'assets/images/breakfast-quinoa-and-red-fruit-salad-134061-1-removebg-preview 1.png',
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Quinoa Fruit Salad',
                          style: TextStyle(fontSize: 32),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SmoothStarRating(
                          color: Color(0xFFFFA451),
                          borderColor: Color(0xFFFFA451),
                          rating: 5,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    cartAdd(),
                    SizedBox(height: 30),
                    Container(
                      decoration: BoxDecoration(color: Color(0xFFF3F3F3)),
                      width: size.width * 1,
                      height: size.height * 0.0004,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nessa opção contém:',
                          style: TextStyle(fontSize: 24),
                        ),
                        Container(
                          width: size.width * 0.5,
                          height: size.height * 0.002,
                          color: Color(0xFFFFA451),
                        ),
                        SizedBox(height: 20),
                        Container(
                          child: Text(
                            'Quinoa, morango, uva, kiwi, amoras e pêssegos',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(color: Color(0xFFF3F3F3)),
                          width: size.width * 1,
                          height: size.height * 0.0004,
                        ),
                        SizedBox(height: 10),
                        Container(
                          child: Text(
                              'Se você está procurando por uma nova opção hoje, essa é ideal para você!'),
                        ),
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: size.width * 0.8, // <-- Your width
                            height: size.height * 0.07, // <-- Your height
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFFFA451)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Adicionar ao carrinho',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({Key key, this.imgSrc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            child: Image.asset(
              imgSrc,
              height: size.height * 0.2,
              fit: BoxFit.fill,
              width: size.width * 0.4,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.1,
        )
      ],
    );
  }
}

class cartAdd extends StatelessWidget {
  cartAdd({Key key}) : super(key: key);
  final myController2 c = Get.put(myController2());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFFFF2E7)),
            child: IconButton(
              onPressed: () {
                c.decrement();
              },
              icon: Icon(
                Icons.remove,
                color: Color(0xFFFFA451),
                size: 32,
              ),
            )),
        SizedBox(
          width: 20,
        ),
        Obx((() => Text(
              '${c.cart.toString()}',
              style: TextStyle(fontSize: 24),
            ))),
        SizedBox(
          width: 20,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFFFF2E7)),
          child: IconButton(
            onPressed: () {
              c.increment();
            },
            icon: Icon(
              Icons.add,
              color: Color(0xFFFFA451),
              size: 32,
            ),
          ),
        ),
        Expanded(child: Container()),
        Text(
          'R\$ 30,00',
          style: TextStyle(fontSize: 24),
        )
      ],
    );
  }
}

class myController2 extends GetxController {
  var cart = 0.obs;

  increment() {
    cart.value++;
  }

  decrement() {
    cart.value--;
  }
}

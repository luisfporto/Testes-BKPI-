// @dart=2.9

// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:fruithub/body.dart';
import 'package:fruithub/home_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:validatorless/validatorless.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                height: height * 0.6,
                width: width * 1,
                decoration: BoxDecoration(
                    color: Color(0xFFFFA451),
                    image: DecorationImage(
                        image: AssetImage(
                      'assets/images/kisspng-fruit-basket-clip-art-5aed5301d44408 1.png',
                    ))),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: height * 0.4,
                width: width * 1,
                child: Column(
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Insira suas credenciais',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Color.fromRGBO(39, 33, 77, 1)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextFormField(
                            validator: Validatorless.multiple(
                              [
                                Validatorless.required('Digite seu email'),
                                Validatorless.email('Email inválido')
                              ],
                            ),
                            controller: _emailEC,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Email'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: TextFormField(
                            validator:
                                Validatorless.required('Digite sua senha'),
                            controller: _passwordEC,
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Senha'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Container(
                          height: height * 0.06,
                          width: 327,
                          child: ElevatedButton(
                              child: Text("Entrar",
                                  style: TextStyle(fontSize: 14)),
                              style: ButtonStyle(
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xFFFFA451)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ))),
                              onPressed: () async {
                                final SharedPreferences sharedPreferences =
                                    await SharedPreferences.getInstance();

                                var formValid =
                                    _formKey.currentState?.validate() ?? false;
                                if (formValid) {
                                  sharedPreferences.setString(
                                      'email', _emailEC.text);
                                  Get.to(() => HomeScreen());

                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => Body()));
                                }
                              })),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

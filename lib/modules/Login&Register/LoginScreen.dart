// ignore_for_file: file_names

import 'package:ecommerce/Animation/route.dart';
import 'package:ecommerce/Layout/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'RegisterScreen.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/1.png'),

              SizedBox(
                height: 20,
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 32, color: HexColor('#008BD2')),
              ),
              SizedBox(
                height: 20,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 2500),
                curve: Curves.easeOutBack,
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: HexColor('#FEFEFE'),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 2),
                            color: HexColor('#DDDDDD'),
                            spreadRadius: 10,
                            blurRadius: 10),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: HexColor('#008BD2')),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: HexColor('#008BD2')),
                              ),
                              icon: Image.asset(
                                'assets/profile.png',
                                color: HexColor('#008BD2'),
                              ),
                              label: const Text(
                                'Username',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              border: UnderlineInputBorder()),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: HexColor('#008BD2')),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: HexColor('#008BD2')),
                              ),
                              icon: Image.asset(
                                'assets/key.png',
                                color: HexColor('#008BD2'),
                              ),
                              label: const Text(
                                'Password',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                              border: UnderlineInputBorder()),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: HexColor('#194F7D'),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(SlideRight(page: RegisterScreen()));
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: HexColor('#194F7D'),
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? b) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        activeColor: HexColor('#194F7D'),
                      ),
                      Text('Remember me')
                    ],
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(SlideRight(page: HomeLayout()));
                    },
                    child: Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: HexColor('#194F7D'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))),
                  )
                ],
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Image.asset('assets/2.png')
            ],
          ),
        ),
      )),
    );
  }
}

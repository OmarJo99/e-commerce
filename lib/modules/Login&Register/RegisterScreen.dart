// ignore: file_names
// ignore: file_names

// ignore_for_file: prefer_const_constructors

import 'package:ecommerce/Animation/route.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _registerScreenState createState() => _registerScreenState();
}

// ignore: camel_case_types
class _registerScreenState extends State<RegisterScreen> {
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
                'Register',
                style: TextStyle(fontSize: 32, color: HexColor('#008BD2')),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: HexColor('#008BD2')),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: HexColor('#008BD2')),
                            ),
                            icon: Icon(Icons.email_outlined,
                                size: 20, color: HexColor('#008BD2')),
                            label: const Text(
                              'Email',
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
                              'Re Password',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            border: UnderlineInputBorder()),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // ignore: prefer_const_constructors

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: HexColor('#008BD2'),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: HexColor('#194F7D'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                            child: Text(
                          'Register',
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

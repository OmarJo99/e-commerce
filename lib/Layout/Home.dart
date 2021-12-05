// ignore: file_names
// ignore_for_file: file_names

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ecommerce/Animation/route.dart';
import 'package:ecommerce/components/components.dart';
import 'package:ecommerce/controller/controller.dart';
import 'package:ecommerce/model/model.dart';
import 'package:ecommerce/modules/DescriptionScreen/descriptionscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeLayout extends StatefulWidget {
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  ScrollController scrollController = ScrollController();
  final Productcontroller productcontroller = Productcontroller();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Builder(builder: (context) {
      return Scaffold(
        backgroundColor: HexColor('008BD2'),
        appBar: AppBar(
          title: Text('Product Page'),
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.menu_open_rounded,
              size: 35,
              color: HexColor('ffffff'),
            ),
          ),
          backgroundColor: HexColor('008BD2'),
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                  onPressed: () {},
                  icon: ClipOval(child: Image.asset('assets/user.jpg'))),
            )
          ],
        ),
        body: FutureBuilder<dynamic>(
            future: productcontroller.getProduct(),
            builder: (context, snapshot) {
              List<Products> data = snapshot.data;
              if (snapshot.hasData) {
                return SafeArea(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 60),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 15),
                                        color: Colors.black26,
                                        blurRadius: 25)
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                            ),
                            SingleChildScrollView(
                              controller: scrollController,
                              child: Column(
                                children: [
                                  ListView.builder(
                                    controller: scrollController,
                                    reverse: true,
                                    shrinkWrap: true,
                                    itemBuilder: (c, i) => itemBuilder(
                                        data[i].title.toString(),
                                        data[i].description.toString(),
                                        data[i].image.toString(),
                                        data[i].price.toString(), () {
                                      Navigator.of(context).push(SlideRight(
                                          page: DescriptionScreen(
                                        data[i].title.toString(),
                                        data[i].image.toString(),
                                        data[i].description.toString(),
                                        data[i].price.toString(),
                                      )));
                                    }, size),
                                    itemCount: data.length,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(
                      color: Colors.yellow,
                    ),
                  ),
                );
              }
            }),
      );
    });
  }
}

//   SingleChildScrollView(
//         child: Column(
//           children: [
//             ListView.separated(
//                 controller: scrollController,
//                 shrinkWrap: true,
//                 itemCount: 10,
//                 separatorBuilder: (context, index) => Divider(),
//                 itemBuilder: (context, index) => itemBuilder())
//           ],
//         ),
//       )

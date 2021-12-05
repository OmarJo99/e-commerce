import 'package:ecommerce/Animation/route.dart';
import 'package:ecommerce/Layout/Home.dart';
import 'package:ecommerce/components/components.dart';
import 'package:ecommerce/controller/controller.dart';
import 'package:ecommerce/model/model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DescriptionScreen extends StatelessWidget {
  Productcontroller productcontroller = Productcontroller();

  String title;
  String image;
  String price;
  String desctription;
  DescriptionScreen(this.title, this.image, this.desctription, this.price,
      {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Product Page',
          style: TextStyle(color: HexColor('008BD2'), fontSize: 18),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: HexColor('008BD2'),
            ),
            onPressed: () {
              Navigator.of(context).pop(SliderLeft(page2: HomeLayout));
            }),
      ),
      backgroundColor: HexColor('008BD2'),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 400,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              children: [
                itemDescription(size, '', image),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    dots(Colors.red, true),
                    dots(Colors.blue, false),
                    dots(Colors.green, false),
                  ],
                ),
                maintextandprice(title, price)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Text(
                desctription,
                overflow: TextOverflow.clip,
                maxLines: 4,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Products {
  Products({
    final this.id = 0,
    final this.title = '',
    final this.price = 20,
    final this.description = '',
    final this.image = '',
  });

  int id;
  String title;
  double price;
  String description;
  String image;

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        image: json['image']);
  }
}

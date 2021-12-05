import 'package:dio/dio.dart';
import 'package:ecommerce/model/model.dart';

class Productcontroller {
  Dio dio = Dio();
  Future getProduct() async {
    final url = 'https://fakestoreapi.com/products';
    Response response = await dio.get(url);
    List<Products> productlist = [];
    if (response.statusCode == 200) {
      for (var p in response.data) {
        productlist.add(Products.fromJson(p));
      }
      return productlist;
    }
  }
}

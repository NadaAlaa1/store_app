import 'dart:convert';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> productsLists = [];
    for (int i = 0; i < data.length; i++) {
      productsLists.add(
        ProductModel.fromJson(data[i]),
      );
    }

    return productsLists;
  }
}
import 'package:flutter/material.dart';

class UpdateProductScreen extends StatelessWidget {
  const UpdateProductScreen({super.key});

  static String id = 'UpdateProductScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Product',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}

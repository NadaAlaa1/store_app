import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_screen.dart';

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.product,
    Key? key,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Define responsive dimensions
    final cardPadding = screenWidth * 0.04; // 16px equivalent for most screens
    final cardElevation = screenWidth * 0.025; // Proportional elevation
    final imageSize = screenHeight * 0.12; // Proportional image size
    final imageTopOffset = -imageSize / 1.5; // Maintain same relative positioning
    final imageRightOffset = screenWidth * 0.04; // Equivalent to 32px
    final cardShadowBlur = screenWidth * 0.12; // Proportional shadow blur
    final cardShadowSpread = screenWidth * 0.05; // Proportional shadow spread

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProductScreen.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: cardShadowBlur, // Responsive blur radius
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: cardShadowSpread, // Responsive spread radius
                  offset: Offset(cardShadowSpread, cardShadowSpread / 2), // Dynamic offset
                ),
              ],
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.02), // Responsive border radius
              ),
              elevation: cardElevation, // Responsive elevation
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: cardPadding,
                  vertical: cardPadding,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 6),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: screenWidth * 0.04, // Dynamic font size
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.005, // Dynamic spacing
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${product.price.toString()}',
                          style: TextStyle(
                            fontSize: screenWidth * 0.045, // Dynamic font size
                          ),
                        ),
                        const Icon(FontAwesomeIcons.heart),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: imageRightOffset, // Responsive right offset
            top: imageTopOffset, // Responsive top offset
            child: Image.network(
              product.image,
              height: imageSize, // Responsive height
              width: imageSize, // Responsive width
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

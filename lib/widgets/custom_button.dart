import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.buttonText});
  final VoidCallback? onTap;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(screenWidth * 0.02), // Dynamic border radius
        ),
        width: screenWidth * 0.9, // Button width is 90% of screen width
        height: screenHeight * 0.08, // Button height is 8% of screen height
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.045, // Dynamic font size
            ),
          ),
        ),
      ),
    );
  }
}

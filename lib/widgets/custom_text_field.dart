import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.hintText,
    this.inputType,
    this.onChanged,
    this.obscureText = false,
  }) : super(key: key);

  final Function(String)? onChanged;
  final String? hintText;
  final TextInputType? inputType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;

    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04, // Dynamic horizontal padding
          vertical: screenWidth * 0.03, // Dynamic vertical padding
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(screenWidth * 0.02), // Dynamic border radius
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(screenWidth * 0.02), // Dynamic border radius
        ),
      ),
    );
  }
}

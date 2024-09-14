import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {

  final Function()? onTap;
  const SignUpButton({super.key, required this.onTap});

  @override
    Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30), // Adjust vertical padding to control height
        margin: const EdgeInsets.symmetric(horizontal: 90),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 14, 38, 64),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
          child: Text(
            "SIGN UP",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 13,
              fontFamily: 'GabrielSans',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
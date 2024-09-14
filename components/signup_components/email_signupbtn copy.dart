import 'package:flutter/material.dart';

class EmailTextFieldSignUp extends StatelessWidget {
  const EmailTextFieldSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          style: const TextStyle(
            fontSize: 13.0, // Adjust font size
            height: 1.5,    // Adjust line height (default is usually 1.0)
            color: Colors.black, // Customize the content text color if needed
          ),
          decoration: InputDecoration(
            hintText: "Email", // Hint text
            hintStyle: const TextStyle(
              fontSize: 13.0,
              color: Color.fromARGB(150, 14, 38, 64), 
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 0.0),
              child: Icon(
                Icons.email,
                color: Color.fromARGB(255, 14, 38, 64),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            fillColor: const Color.fromARGB(255, 207, 218, 239),
            filled: true, 
            contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0), // Adjust the vertical padding to control height
            
          ),
        ),
      );
  }
}
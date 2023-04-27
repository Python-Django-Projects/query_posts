// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTextFielld extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextFielld({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
   });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 231, 231, 231)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          // fillColor: Color.fromARGB(255, 108, 51, 51),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600])
        ),
      ),
    );
  }
}

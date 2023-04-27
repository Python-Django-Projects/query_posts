import 'package:flutter/material.dart';

class SqureTile extends StatelessWidget {
  final String imagePath;
  const SqureTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white ,
          border: Border.all(color: Color.fromARGB(255, 192, 192, 192)),
          borderRadius: BorderRadius.circular(40)),
      child: Image.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}

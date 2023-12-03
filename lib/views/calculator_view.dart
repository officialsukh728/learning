import 'package:flutter/material.dart';

class CalcultorView extends StatelessWidget {
  const CalcultorView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter a number",
          ),
        )
      ],
    );
  }
}

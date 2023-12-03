import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalcultorView extends StatelessWidget {
  const CalcultorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
            decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter a number",
        ))
      ],
    );
  }
}

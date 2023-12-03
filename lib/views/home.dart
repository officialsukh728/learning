import 'package:flutter/material.dart';
import 'package:learning/views/calculator_view.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: CalcultorView(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:learning/views/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter learn",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalcultorView extends StatefulWidget {
  const CalcultorView({super.key});

  @override
  State<CalcultorView> createState() => _CalcultorViewState();
}

class _CalcultorViewState extends State<CalcultorView> {
  int a = 0;
  int b = 0;
  int c = 0;
  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayOneController.text=a.toString();
    displayOneController.text=b.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          Calculatordisplay(
              hint: "Enter first number ", controller: displayOneController),
          const SizedBox(
            height: 30,
          ),
          Calculatordisplay(
              hint: "Enter second number ", controller: displayTwoController),
          const SizedBox(
            height: 30,
          ),
          Text(
            c.toString(),
            style: const TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.deepOrange,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.deepOrange,
                child: const Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.deepOrange,
                child: const Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.deepOrange,
                child: const Icon(CupertinoIcons.divide),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Calculatordisplay extends StatelessWidget {
  const Calculatordisplay({
    super.key,
    this.hint = "Enter a number ",
    required this.controller,
  });

  final String? hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 3.0,
          ),
        ),
      ),
    );
  }
}

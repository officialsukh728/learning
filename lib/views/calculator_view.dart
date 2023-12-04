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
  num c = 0;
  final displayOneController = TextEditingController();
  final displayTwoController = TextEditingController();

  late final AppLifecycleListener _listener;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayOneController.text = a.toString();
    displayOneController.text = b.toString();
    _listener = AppLifecycleListener(
        onShow: _onShow,
        onHide: _onHide,
      onResume: _onResume,
      onDetach: _onDetach,
      onInactive: _onInactive,
      onPause: _onPause,
      onRestart: _onRestart,
      onStateChange: _onStateChange,
        );
  }
  void _onShow()=> print("onShow called");
  void _onHide()=>print("onHind called");
  void _onResume()=>print("onResume called");
  void _onDetach()=>print("onDetach called");
  void _onInactive()=>print("onInactive called");
  void _onPause()=>print("onPause called");
  void _onRestart()=>print("onRestart called");
  void _onStateChange(AppLifecycleState){
    print("onStatechange called with state: $State");
  }


  @override
void dispose() {
    displayTwoController.dispose();
    displayOneController.dispose();
    _listener.dispose();
    super.dispose();

}
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: <Widget>[
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
                onPressed: () {
                  setState(() {
                    c = num.tryParse(displayOneController.text)! +
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                backgroundColor: Colors.deepOrange,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    c = num.tryParse(displayOneController.text)! -
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                backgroundColor: Colors.deepOrange,
                child: const Icon(CupertinoIcons.minus),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    c = num.tryParse(displayOneController.text)! *
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                backgroundColor: Colors.deepOrange,
                child: const Icon(CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    c = num.tryParse(displayOneController.text)! /
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                backgroundColor: Colors.deepOrange,
                child: const Icon(CupertinoIcons.divide),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton.extended(
            onPressed: () {
              setState(
                () {
                  a = 0;
                  b = 0;
                  c = 0;
                  displayOneController.clear();
                  displayTwoController.clear();
                },
              );
            },
            backgroundColor: Colors.deepOrange,
            label: const Text("clear"),
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

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magic());
}

class Magic extends StatelessWidget {
  const Magic({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home:Haha(),);
  }
}
class Haha extends StatefulWidget {
  const Haha({super.key});

  @override
  State<Haha> createState() => _HahaState();
}

class _HahaState extends State<Haha> {
  var first = 'assets/1.png';
  int doit = 1;
  void tap(){
    int doit = Random().nextInt(6)+1;

    setState(() {
      first = 'assets/$doit.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("magic"),) ,
      body:

      Center(
        child: GestureDetector(
          onTap: tap,
          child: Image.asset(first),
        ),
      ),
    );
  }
}





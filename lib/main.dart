import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text("Ask me anything"),
        ),
        body: const AskMeAnything(),
      ),
    ),
  );
}

class AskMeAnything extends StatefulWidget {
  const AskMeAnything({Key? key}) : super(key: key);

  @override
  State<AskMeAnything> createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int nextQuestion = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            nextQuestion = Random().nextInt(5) + 1;
          });
        },
        child: Image(
          image: AssetImage("images/ball$nextQuestion.png"),
        ),
      ),
    );
  }
}

import 'dart:math';

import 'package:calculator/btnclick.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget customButton(String btnVal) {
    return Expanded(
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.grey.shade900),
        ),
        onPressed: () {
          btnclickedFunction(btnVal);
          setState(() {
            texttodisplay = res;
          });
        },
        child: Text(
          btnVal,
          style: const TextStyle(color: Colors.white, fontSize: 45),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const Text(
          "Calculator",
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(10),
                child: Text(
                  texttodisplay,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              children: [
                customButton("9"),
                customButton("8"),
                customButton("7"),
                customButton("+"),
              ],
            ),
            Row(
              children: [
                customButton("6"),
                customButton("5"),
                customButton("4"),
                customButton("-"),
              ],
            ),
            Row(
              children: [
                customButton("3"),
                customButton("2"),
                customButton("1"),
                customButton("x"),
              ],
            ),
            Row(
              children: [
                customButton("C"),
                customButton("0"),
                customButton("="),
                customButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

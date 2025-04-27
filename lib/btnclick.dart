import 'package:flutter/material.dart';

late int firstnum;
late int secondnum;
late String texttodisplay = "";
late String res;
late String operations;

void btnclickedFunction(String btntext) {
  if (btntext == "C") {
    texttodisplay = "";
    firstnum = 0;
    secondnum = 0;
    res = "";
  } else if (btntext == "+" ||
      btntext == "-" ||
      btntext == "x" ||
      btntext == "/") {
    firstnum = int.parse(texttodisplay);
    res = "";
    operations = btntext;
    texttodisplay = "";
  } else if (btntext == "=") {
    secondnum = int.parse(texttodisplay);
    if (operations == "+") {
      res = (firstnum + secondnum).toString();
    } else if (operations == "-") {
      res = (firstnum - secondnum).toString();
    } else if (operations == "x") {
      res = (firstnum * secondnum).toString();
    } else if (operations == "/") {
      res = (secondnum != 0 ? (firstnum ~/ secondnum).toString() : "Error");
    }
  } else {
    res = int.parse(texttodisplay + btntext).toString();
  }
}

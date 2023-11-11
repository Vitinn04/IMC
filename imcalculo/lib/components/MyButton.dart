import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  final String sexo;
  final Function()? function;

  MyButton(this.sexo, this.function);

  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: function, child: Text(sexo));
  }
}

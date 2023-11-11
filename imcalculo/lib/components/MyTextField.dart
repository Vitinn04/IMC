import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MytextField extends StatelessWidget {
  final TextEditingController controller;
  final String tipo;

  MytextField(this.controller, this.tipo);

  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration:
          InputDecoration(border: OutlineInputBorder(), label: Text(tipo)),
    );
  }
}

import 'package:flutter/material.dart';

class Nomes extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('nomes')),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text('Lucas Barbosa de Oliveira  RA: 1431432312031'),
          SizedBox(
            height: 20,
          ),
          Text('Victor Henrique Cavalcante Batista RA:1431432312036')
        ],
      ),
    );
  }
}

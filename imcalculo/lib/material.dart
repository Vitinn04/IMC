import 'package:flutter/material.dart';
import 'package:imcalculo/homePage.dart';
import 'package:imcalculo/nomes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/nomes': (context) => Nomes(),
      }
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:imcalculo/components/MyButton.dart';
import 'package:imcalculo/components/MyTextField.dart';

class HomePage extends StatefulWidget {
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

  String situacao = '';
  double imc = 0;

  void imcMasculino() {
    double peso = double.parse(controller1.text);
    double altura = double.parse(controller2.text);
    setState(() {
      imc = peso / (altura * altura);
    });

    if (imc < 20.7) {
      setState((){
        situacao = "Abaixo do peso";
      });
    } else if (imc >= 20.7 && imc < 26.4) {
      setState((){
        situacao = "Peso ideal";
      });
    } else if (imc >= 26.5 && imc < 27.8) {
      setState((){
        situacao = "Pouco acima do peso";
      });
    } else if (imc >= 27.9 && imc < 31.1) {
      setState((){
        situacao = "Acima do peso";
      });
    } else {
      setState((){
        situacao = "Obesidade";
      }); 
    }
  }

  void imcFeminino() {
    double peso = double.parse(controller1.text);
    double altura = double.parse(controller2.text);
    setState(() {
      imc = peso / (altura * altura);
    });

    if (imc < 19.1) {
      setState(() {
        situacao = "Abaixo do peso";
      });
    } else if (imc >= 19.1 && imc < 25.8) {
      setState(() {
        situacao = "Peso ideal";
      });
    } else if (imc >= 25.9 && imc < 27.3) {
      setState(() {
        situacao = "Pouco acima do peso";
      });
    } else if (imc >= 27.4 && imc < 32.3) {
      setState(() {
        situacao = "Acima do peso";
      });
    } else {
      setState(() {
        situacao = "Obesidade";
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculo de IMC',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(children: [
          Text('digite suas informações'),
          SizedBox(
            height: 10,
          ),
          MytextField(controller1, 'Peso'),
          SizedBox(
            height: 10,
          ),
          MytextField(controller2, 'altura'),
          SizedBox(
            height: 10,
          ),
          Text(
            'Selecione seu sexo',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton('Masculino', imcMasculino),
              MyButton('Feminino', imcFeminino)
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text('Suas informações'),
          SizedBox(
            height: 20,
          ),
          Text('Seu IMC é:   $imc'),
          SizedBox(
            height: 20,
          ),
          Text('Sua situação:  $situacao'),
          SizedBox(height: 40),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              child: Text('Ver nomes dos alunos'),
              onPressed: (){
                Navigator.of(context).pushNamed('/nomes');
              }
            ),
          )
        ]),
      ),
    );
  }
}

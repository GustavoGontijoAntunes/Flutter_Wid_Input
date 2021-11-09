import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _peso = TextEditingController();
  TextEditingController _altura = TextEditingController();
  var resposta = "Insira as informações para realizar o cálculo.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC"),
      ),
      body: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Altura em cm",
            ),
            controller: _altura,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Peso em Kg",
            ),
            controller: _peso,
          ),
          ElevatedButton(
            onPressed: calcular,
            child: Text(
              "Calcular o IMC"
            ),
          ),
          Text(
            resposta,
            textAlign: TextAlign.center,
          ),


          /*Padding(
            padding: EdgeInsets.all(5),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Digite um valor",
              ),
              style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),
              /*obscureText: true,*/
              maxLength: 3,
              /*onChanged: (String valor) {
                print(valor);
              },
              onSubmitted: (String valor) {
                print(valor);
              }*/
              controller: _textoCaixa,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print(_textoCaixa);
            },
            child: Text(
              "Resultado",
            ),
          ),*/
        ],
      ),
    );
  }

  calcular(){
    setState((){
      double peso = double.parse(_peso.text);
      double altura = double.parse(_altura.text);
      double imc = peso / (altura * altura / 100);
      resposta = imc.toString();
    });
  }
}

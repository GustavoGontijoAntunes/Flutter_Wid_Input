import 'package:flutter/material.dart';

class CampoRadio extends StatefulWidget {
  @override
  _CampoRadioState createState() => _CampoRadioState();
}

class _CampoRadioState extends State<CampoRadio> {
  int _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC"),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: Text("Masculino"),
            value: 1,
            groupValue: _escolhaUsuario,
            onChanged: (int escolha) {
              setState((){
                _escolhaUsuario = escolha;
              });
            },
          ),
          RadioListTile(
            title: Text("Feminino"),
            value: 2,
            groupValue: _escolhaUsuario,
            onChanged: (int escolha) {
              setState((){
                _escolhaUsuario = escolha;
              });
            },
          ),
        ],
      ),
    );
  }
}

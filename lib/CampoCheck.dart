import 'package:flutter/material.dart';

class CampoCheck extends StatefulWidget {
  @override
  _CampoCheckState createState() => _CampoCheckState();
}

class _CampoCheckState extends State<CampoCheck> {
  bool _estadoSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC"),
      ),
      body: Column(
        children: [
         Text(
           "Batata"
         ),
          Checkbox(
            value: _estadoSelecionado,
            onChanged: (bool valor) {
              setState((){
                _estadoSelecionado = valor;
              });
              print(valor.toString());
            }
          ),
          CheckboxListTile(
            title: Text(
              "Batata"
            ),
            subtitle: Text(
                "A mais quente do planeta"
            ),
            value: _estadoSelecionado,
            onChanged: (bool valor) {
              setState(() {
                _estadoSelecionado = valor;
              });
            }
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CampoSwitch extends StatefulWidget {
  @override
  _CampoSwitchState createState() => _CampoSwitchState();
}

class _CampoSwitchState extends State<CampoSwitch> {
  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC"),
      ),
      body: Column(
        children: [
          SwitchListTile(
            title: Text(
              "Receber Notificação"
            ),
            value: _escolhaUsuario,
            onChanged: (bool valor) {
              setState((){
                _escolhaUsuario = valor;
              });
            }
          )
        ],
      ),
    );
  }
}

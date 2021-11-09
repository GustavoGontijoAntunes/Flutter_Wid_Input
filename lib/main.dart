import 'package:flutter/material.dart';
import 'Texto.dart';
import 'CampoCheck.dart';
import 'CampoRadio.dart';
import 'CampoSwitch.dart';

void main() {
  runApp(
    MaterialApp(
      /*home: CampoTexto(),
      home: CampoCheck()
      home: CampoRadio(),*/
      home: CampoSwitch()
    ),
  );
}

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text("Título")),
        backgroundColor: Colors.cyan,
        body: Text("Conteúdo"),
        bottomNavigationBar: BottomAppBar(
          color: Colors.yellow,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Voltar"),
                )
              ],
            ),
          ),
        ),
    );
  }
}
*/

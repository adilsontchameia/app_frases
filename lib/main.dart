import 'package:flutter/material.dart';

//Primeiro - Precisamos do metodo main.
void main() {
  runApp(MaterialApp(
    home: Home(),
    //Desabilitar o banner modo debug.
    debugShowCheckedModeBanner: false,
  ));
}

//Segundo criar um StatefulWidget
//Widgets que podem ser alterados (variaveis)
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Terceiro retornar um scaffold, para a base do app.
    return Scaffold(
      appBar: AppBar(
        title: Text("App Frase do Dia"),
        backgroundColor: Colors.blue,
      ),
      body: Container(),
    );
  }
}

import 'dart:math';
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
//Widgets que podem ser alterados, dinamicos (variaveis)
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Criando a logica - Arrays de Frases
  var _frases = [
  "The sun is beautiful.", 
  "The moon is awesome", 
  "I love coding", 
  "Coding is life, and its awesome"];
  //Titulos
  var _fraseGerada = "Clique abaixo para gerar uma frase !";
  //Metodo para gerar a frase
  void _gerarFrase() {
    //0,1,2,3
    //Vai definir automaticamente o numero de frase
    var numeroSorteado = Random().nextInt(_frases.length);

    //Atualizar as frases na interface
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    //Terceiro retornar um scaffold, para a base do app.
    return Scaffold(
        appBar: AppBar(
          title: Text("App Frase do Dia"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            //width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue),
                ),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue,
                  onPressed: _gerarFrase,
                ),
              ],
            ),
          ),
        ));
  }
}

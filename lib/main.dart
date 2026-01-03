
import 'dart:math';

import 'package:flutter/material.dart';


void main(){
  
  runApp(MaterialApp(
    home: Home(),
  )
  );
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   List <String> frases =[
     "Acredite em você, mesmo quando ninguém mais acreditar",
     "Cada pequeno esforço de hoje constrói o sucesso de amanhã",
     "Não desista, grandes conquistas levam tempo",
     "O progresso acontece quando você decide continuar.",
     "Dificuldades existem para mostrar o quanto você é capaz."];

   int numeroAleatorio = Random().nextInt(5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase do Dia"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: BoxBorder.all(width: 3, color: Colors.black)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Image.asset("imagens/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Text("Clique no botao abaixo para gerar Frase motivacional"),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: (){
                    }, 
                    child: Text("Gerar frase")),
              ),
              
            ],
          ),
        ),
      ),
     
    );
  }
}

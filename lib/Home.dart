
import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _frase ="Clique no botão abaixo para gerar frase";
  List <String> frases =[
    "Acredite em você e siga firme, pois cada esforço vale a pena sempre!!!",
    "Persistir todos os dias transforma pequenos passos em vitórias reais!!",
    "Não desista agora, pois a constância constrói grandes resultados sempre",
    "A disciplina diária supera a motivação quando o cansaço aparece sempre",
    "Continue mesmo cansado, seu futuro agradece cada tentativa sem já s"];

  void gerarFrase(){

    int numeroAleatorio = Random().nextInt(5); // Criacao de numero aleatorio

    setState(() {
      _frase = frases[numeroAleatorio];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Frase do Dia",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            //border: BoxBorder.all(width: 3, color: Colors.black)
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
                child: Text(
                  _frase,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: ElevatedButton(
                    onPressed: (){
                      gerarFrase();
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(250, 50),
                      //maximumSize: const Size(200,50),
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      "Gerar frase",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

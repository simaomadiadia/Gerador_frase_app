
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

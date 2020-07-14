import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldScreem()); // primeiro widgt que será executado.
}

class HelloWorldScreem extends StatelessWidget {
  // metodo que será executado quando a classe for executada.
  @override
  Widget build(BuildContext context) {
    // 1° componente a ser retornado
    return MaterialApp(
        home: Scaffold(
            // elemento que está dentro do Scaffold
            appBar: AppBar(
              title: Center(child: Text("Hello World"))
            ),
            body: Center(
              child: Text("Hello Flutter") // centralizando o texto.
              )
            )
            );
  }
}

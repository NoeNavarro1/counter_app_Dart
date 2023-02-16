

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    const TextStyle estiloTexto = TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    );
    return Scaffold(
    appBar: AppBar(
      title:const Text('Home Screen'),
      elevation: 5.5,
    ),
    backgroundColor: Color.fromARGB(255, 185, 14, 198),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text (
          'Numero de taps:',
          style: estiloTexto,
          ),
        Text('$contador',
        style: estiloTexto,
        )
      ],
    )),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton(
      backgroundColor:const Color.fromARGB(255, 37, 37, 36),
      foregroundColor:const Color.fromARGB(255, 226, 18, 18),
      onPressed: () {
        contador++;
        print('Presionaste el boton');
        print(contador);
      },
      child: Icon(Icons.add),
    ));
  }
}
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    const TextStyle estiloTexto = TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    );
    return Scaffold(
    appBar: AppBar(
      title:const Text('counter_screen'),
      elevation: 10,
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
    floatingActionButton: CustomFloatingActionButton());
  }
}


class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor:const Color.fromARGB(255, 37, 37, 36),
          foregroundColor:const Color.fromARGB(255, 226, 18, 18),
         onPressed: null,
          child: Icon(Icons.exposure_plus_1),
        ),
          FloatingActionButton(
          backgroundColor:const Color.fromARGB(255, 37, 37, 36),
          foregroundColor:const Color.fromARGB(255, 226, 18, 18),
          onPressed:null,
          child: Icon(Icons.restart_alt),
        ),
                FloatingActionButton(
          backgroundColor:const Color.fromARGB(255, 37, 37, 36),
          foregroundColor:const Color.fromARGB(255, 226, 18, 18),
          onPressed:null,
          child: Icon(Icons.exposure_minus_1),
        ),        
      ],
    );
  }
}
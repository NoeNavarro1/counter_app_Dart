import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  void incrementar(){
    contador++;
    setState(() {});
  }

  void decrementar(){
    contador--;
    setState(() {});
  }

  void reiniciar(){
    contador = 0;
    setState(() {});
  }

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
    floatingActionButton: CustomFloatingActionButton(
      decrease: decrementar, 
      increase: incrementar,
      reset: reiniciar, 
      ));
  }
}


class CustomFloatingActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  
  const CustomFloatingActionButton({
    Key? key, required this.increase, required this.decrease, required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor:const Color.fromARGB(255, 37, 37, 36),
          foregroundColor:const Color.fromARGB(255, 226, 18, 18),
         onPressed: () => increase(),
          child: Icon(Icons.exposure_plus_1),
        ),
          FloatingActionButton(
          backgroundColor:const Color.fromARGB(255, 37, 37, 36),
          foregroundColor:const Color.fromARGB(255, 226, 18, 18),
          onPressed:() => reset(),
          child: Icon(Icons.restart_alt),
        ),
                FloatingActionButton(
          backgroundColor:const Color.fromARGB(255, 37, 37, 36),
          foregroundColor:const Color.fromARGB(255, 226, 18, 18),
          onPressed:() => decrease(),
          child: Icon(Icons.exposure_minus_1),
        ),        
      ],
    );
  }
}
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 15;
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize = const TextStyle(fontSize: 30);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Número de Clicks",
              style: fontSize,
            ),
            Text(
              '$counter',
              style: fontSize,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: ()=>setState(()=>counter++),
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),


          FloatingActionButton(
            onPressed: ()=> setState(()=>counter=0),
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.restart_alt,
              color: Colors.white,
            ),
          ),

          FloatingActionButton(
            onPressed: () => setState(()=> counter--),
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.exposure_minus_1_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

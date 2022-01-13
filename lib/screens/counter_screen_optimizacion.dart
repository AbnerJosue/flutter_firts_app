import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  void increase() {
    counter++;
    setState(() {
    });
  }

  void decrease() {
    counter--;
    setState(() {
    });
  }

  void reset(){
    counter=0;
    setState(() {
    });
  }


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
      floatingActionButton:
        CustomFloatingActions(
          increaseFn: increase,
          decreaseFn: decrease,
          resetFn: reset,
        ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn; 
  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        FloatingActionButton(
          onPressed: () =>resetFn(),
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.restart_alt,
            color: Colors.white,
          ),
        ),
        FloatingActionButton(
          onPressed:()=>  decreaseFn(),
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.exposure_minus_1_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

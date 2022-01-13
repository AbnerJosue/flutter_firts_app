
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize = const TextStyle(fontSize: 30);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aqui va el titulo'),
          elevation: 10,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:<Widget>[
              Text("Número de Clicks",style: fontSize,),
              Text("10",style: fontSize,)
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("HOLA MUNDO");
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          
        ),        
      );
  }
}

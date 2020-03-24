import 'dart:math';

/**
 * Implementa o Scaffold do app
 * para utilizar as classes stateful
 * 
 * Autor Maycon de Moraes
 */

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _frase = "Clique no botão para gerar uma frase!";
  List _listaFrases = [
    "Que o dia comece bem e termine ainda melhor.",
    "Pra hoje: sorrisos bobos, uma mente tranquila e um coração cheio de paz.",
    "Às vezes as coisas demoram, mas acontecem. O importante é saber esperar e não perder a fé!",
    "Imagine uma nova história para a sua vida e acredite nela.",
    "Nem todos os dias são bons, mas há algo bom em cada dia.",
    "Sorria! Deus acaba de te dar um novo dia e coisas extraordinárias podem acontecer se você acreditar.",
    "Levanta, sacode a poeira e dá a volta por cima.",
    "Um pequeno pensamento positivo pela manhã pode mudar todo o seu dia.",
    "Que os dias ruins se tornem raros e os bons virem rotina.",
    "Todo dia é uma ocasião especial. Guarde apenas o que tem que ser guardado: lembranças, sorrisos, poemas, cheiros, saudades, momentos…",
    "Cultive o amor, tristeza não dá flor.",
    "Não se preocupe em entender, viver ultrapassa qualquer entendimento.",
    "Seja a mudança que você deseja ver no mundo.",
    "Só existem dois dias no ano em que nada pode ser feito. Um se chama ontem e o outro se chama amanhã, portanto hoje é o dia certo para amar, acreditar, fazer e principalmente viver.",
    "A mudança que você quer está na decisão que você toma.",
    "Viva sua vida com quem te deixa feliz e não com quem você tenha que agradar.",
    "Que o dia seja leve, que a tristeza seja breve e que o dia seja feliz."
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Frases do Dia")
      ),
      body: Column(
        children: <Widget>[
          Image.asset("images/logo-frases.jpg"),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(30),
            child: Text(
              this._frase,
              style: TextStyle(
                fontSize: 36,
                color: Colors.grey,
                wordSpacing: 10,
                fontWeight: FontWeight.bold
              ),
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[            
              RaisedButton(
                child: Text("Nova Frase", style: TextStyle(color: Colors.white),),
                onPressed: (){        
                  setState(() {                  
                    int listSize = this._listaFrases.length;
                    Random r = new Random();
                    this._frase = this._listaFrases[r.nextInt(listSize)];
                    print(this._frase);
                  });                        
                },
                color: Colors.green[300]
              )
            ]
          )
        ],
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Text("Valor da Barra de baixo"),
      // ),
    ),
    );
  }
}
import 'dart:math';

import 'package:cara_ou_coroa_app/main.dart';
import 'package:flutter/material.dart';

class TelaResultadoJogo extends StatefulWidget {
  @override
  _TelaResultadoJogoState createState() => _TelaResultadoJogoState();
}

class _TelaResultadoJogoState extends State<TelaResultadoJogo> {
  var moedas = ["images/moeda_cara.png", "images/moeda_coroa.png"];
  var _imageBotaoVoltar = AssetImage("images/botao_voltar.png");

  AssetImage _moedaRandom() {
    return AssetImage(moedas[Random().nextInt(moedas.length)]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Image(
              image: this._moedaRandom(),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Image(
                image: this._imageBotaoVoltar,
              ),
            ),
          )
        ],
      ),
    );
  }
}

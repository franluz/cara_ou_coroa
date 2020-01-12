import 'package:cara_ou_coroa_app/TelaResultadoJogo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _imageLogo = AssetImage("images/logo.png");
  var _imageBotaoJogar = AssetImage("images/botao_jogar.png");

  void _abrirTela(String tela) {
    switch (tela) {
      case "tela2Moeda":
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TelaResultadoJogo()));
        }
        break;
    }
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
              image: this._imageLogo,
            ),
          ),
          GestureDetector(
            onTap: () => {_abrirTela("tela2Moeda")},
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Image(
                image: this._imageBotaoJogar,
              ),
            ),
          )
        ],
      ),
    );
  }
}

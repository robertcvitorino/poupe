import 'package:flutter/material.dart';
import 'package:poupe/pages/Conta.dart';
import 'package:poupe/pages/Favorito.dart';
import 'package:poupe/pages/Pesquisa.dart';

import 'Carrinho.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual=0;
  @override
  Widget build(BuildContext context) {
    List<Widget> listaTelas=  [
      Pesquisa(),
      Favorito(),
      Carrinho(),
      Conta()
    ];
    return Scaffold(
        backgroundColor: Colors.white,






      body: listaTelas[_indiceAtual],

















      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.green,
        onTap: (indice){
          setState(() {
            _indiceAtual =indice;
          });
        },

        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Pesquisa'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            title: Text('Favorito'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Carrinho'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Minha Conta'),
          )
        ]
      ),

    );
  }
}

import 'package:flutter/material.dart';

class Pesquisa extends StatefulWidget {
  @override
  _PesquisaState createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
        final _pesquisa = TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Pesquise pelo nome',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35)
            ),
          ),
        );

        final _imgBarcode = Image.asset('img/barcoder.png');
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
          SizedBox(
            height: 150,
          ),
          SizedBox(
            child: Padding(
                padding: EdgeInsets.all(10),
                child: _pesquisa,
            ),
            ),
            SizedBox(
                    height: 50,
            ),
             SizedBox(
                child: Image.asset('img/barcoder.png'),
               height: 60,
               width: 3800,

             ),
        ],
      ) ,
    );
  }
}

import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  // const Pertanyaan({Key key}) : super(key: key);
  var pertanyaan;

  Pertanyaan(this.pertanyaan);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        pertanyaan,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({Key key}) : super(key: key);
  int totalSkor;

  Hasil(this.totalSkor);

  //GETTER
  String get hasilText {
    String hasil = 'Anda Berhasil';
    if (totalSkor < 8) {
      hasil = 'Anda hebat sekali!';
    } else if (totalSkor <= 12) {
      hasil = 'Anda sedikit jahat!';
    } else if (totalSkor <= 16) {
      hasil = 'Anda agak aneh!';
    } else {
      hasil = 'Anda Sangat Jahat!';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        hasilText,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}

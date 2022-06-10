import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({Key key}) : super(key: key);
  int totalSkor;
  Function resetKuis;

  Hasil(this.totalSkor, this.resetKuis);

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
    return Column(
      children: [
        Center(
          child: Text(
            hasilText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: resetKuis,
          child: Text('Mulai Ulang'),
          style: TextButton.styleFrom(
            primary: Colors.blue,
          ),
        ),
      ],
    );
  }
}

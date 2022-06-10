import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _soalIndex = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang ingin kamu kunjungi?',
      'jawaban': [
        'Kota Bandung',
        'Kota Surabaya',
        'Kota Malang',
        'Kota Jakarta'
      ]
    },
    {
      'pertanyaan': 'Apa makanan kesukaanmu?',
      'jawaban': ['Nasi Goreng', 'Nasi Uduk', 'Nasi Padang', 'Sate Ayam']
    },
    {
      'pertanyaan': 'Apa minuman kesukaanmu?',
      'jawaban': ['Es Teh', 'Es Jeruk', 'Es Jeruk Lemon', 'Es Kopi']
    }
  ];

  void _jawaban() {
    // print('Tombol Jawaban Sudah di Tekan!');
    setState(() {
      _soalIndex += 1;
    });
    if (_soalIndex < pertanyaan.length) {
      print('Benar!');
    } else {
      print('Salah!');
    }
    print(_soalIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Kuis'),
        ),
        body: _soalIndex < pertanyaan.length
            ? Column(
                children: [
                  Pertanyaan(pertanyaan[_soalIndex]['pertanyaan']),
                  ...(pertanyaan[_soalIndex]['jawaban'] as List<String>)
                      .map((jawabanText) {
                    return Jawaban(_jawaban, jawabanText);
                  }).toList(),
                ],
              )
            : Center(
                child: Text('Kamu berhasil menyelesaikan kuis ini'),
              ),
      ),
    );
  }
}

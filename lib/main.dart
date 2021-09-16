import 'package:bytebank/screens/lista.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ByteBank());
}

class ByteBank extends StatelessWidget {
  const ByteBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
        accentColor: Colors.blueGrey[500],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueGrey[900],
          ),
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}






// ignore: camel_case_types
// ignore: camel_case_types

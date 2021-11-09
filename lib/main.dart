import 'package:bytebank/screens/TransferList/main.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TransferList(),
      ),
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.green[700],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            onPrimary: Colors.green[700],
            primary: Colors.green[700],
          ),
        ),
        // buttonTheme: ButtonThemeData(
        //   buttonColor: Colors.green[700],
        //   textTheme: ButtonTextTheme.primary,
        // ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

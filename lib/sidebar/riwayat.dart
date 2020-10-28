import 'package:flutter/material.dart';
import 'package:desaku/main.dart';

class riwayat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title: Text(
          "Riwayat",
          style: TextStyle(color: Colors.green),
        ),
        actions: <Widget>[],
      ),
    );
  }
}

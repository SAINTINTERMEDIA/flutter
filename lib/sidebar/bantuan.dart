import 'package:flutter/material.dart';
import 'package:desaku/main.dart';

class bantuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title: Text(
          "Bantuan",
          style: TextStyle(color: Colors.green),
        ),
        actions: <Widget>[],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:desaku/main.dart';

class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title: Text(
          "Profil",
          style: TextStyle(color: Colors.green),
        ),
        actions: <Widget>[],
      ),
    );
  }
}

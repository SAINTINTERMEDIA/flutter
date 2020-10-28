import 'package:flutter/material.dart';

//tombol icons
///////////////////////////////////////////////////////////////////////////////
class MainMenuList extends StatelessWidget {
  final List<Map<String, String>> menuItems;
  MainMenuList({@required this.menuItems});
  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      child: Container(
        height: 100.0,
        child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.fromLTRB(17, 10, 17, 10),
            crossAxisCount: 5,
            children: List.generate(menuItems.length, (index) {
              return Column(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    // box decoraton untuk membuat kotak atau lingkaran untuk border
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        border: Border.all(color: Colors.grey[300])),
                    child: Center(
                      child: Image.asset(
                        menuItems[index]["image"],
                      ),
                    ),
                  ),

                  // expanded untuk widget memperluas
                  // sebuah child dari container, row atau flex dan akan memenuhi sapce kosong

                  Expanded(
                    child: Text(
                      menuItems[index]["text"],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10.0),
                    ),
                  ),
                ],
              );
            })),
      ),
      onTap: () {
        debugPrint("tekan1");
      },
    );
  }
}

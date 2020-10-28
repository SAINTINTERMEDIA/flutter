import 'package:flutter/material.dart';

// info gambar berita
///////////////////////////////////////////////////////////////////////////////
class DesaMenuList extends StatelessWidget {
  final String title;
  final List<String> desaImages;
  DesaMenuList({@required this.title, @required this.desaImages});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 230.0,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                        child: Text(
                          title,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: InkWell(
                          child: Text(
                            "Lihat Semua",
                            style:
                                TextStyle(fontSize: 17.0, color: Colors.blue),
                          ),
                          onTap: () {
                            debugPrint('lihat semua');
                          },
                        ),
                      ),
                    ],
                  ),

                  // list gambar info berita
                  Column(
                    children: <Widget>[
                      Container(
                        height: 180,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: desaImages.length,
                          itemBuilder: (BuildContext context, index) {
                            return GestureDetector(
                              child: Container(
                                width: 140.0,
                                child: Card(
                                  child: Image.asset(
                                    desaImages[index],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              onTap: () {
                                debugPrint("$index");
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

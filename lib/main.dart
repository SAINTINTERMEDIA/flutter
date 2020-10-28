import 'package:flutter/material.dart';
import 'package:desaku/widgets/desa_menu_list.dart';
import 'package:desaku/widgets/grey_area.dart';
import 'package:desaku/widgets/main_menu_list.dart';
import 'package:desaku/widgets/desa_carousel.dart';
import 'package:desaku/sidebar/profil.dart';
import 'package:desaku/sidebar/bantuan.dart';
import 'package:desaku/sidebar/berkas.dart';
import 'package:desaku/sidebar/cetaksurat.dart';
import 'package:desaku/sidebar/riwayat.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "desaku",
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // list menyimpan map
  var menuItems = [
    {
      'image': 'iconimages/layanansurat.png',
      'text': 'Layanan Surat',
    },
    {
      'image': 'iconimages/biodata.png',
      'text': 'Biodata',
    },
    {
      'image': 'iconimages/pajak.png',
      'text': 'Pajak',
    },
    {
      'image': 'iconimages/riwayat.png',
      'text': 'Riwayat',
    },
    {
      'image': 'iconimages/infodesa.png',
      'text': 'Info Desa',
    },
  ];

/////////////////////////////////////////////////////////////////////////////
  List<String> infodesa = [
    "desaimages/1.jpg",
    "desaimages/2.jpg",
    "desaimages/3.jpg",
    "desaimages/4.jpg",
    "desaimages/5.jpg",
  ];

  List<String> infocomingsoon = [
    "desaimages/6.png",
    "desaimages/7.png",
    "desaimages/8.png",
    "desaimages/9.png",
    "desaimages/10.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /////////////////////////////////////////////////////////////////////////
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.white,
        title: Text(
          "Desaku",
          style: TextStyle(color: Colors.green),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
        ],
      ),

      //tabbar
      /////////////////////////////////////////////////////////////////////////
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     // tabbar yang bawah
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: Colors.green,
      //       ),
      //       title: Text(
      //         "Home",
      //         style: TextStyle(color: Colors.green),
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message, color: Colors.green),
      //       title: Text(
      //         "Message",
      //         style: TextStyle(color: Colors.green),
      //       ),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person, color: Colors.green),
      //       title: Text(
      //         "Profil",
      //         style: TextStyle(color: Colors.green),
      //       ),
      //     ),
      //   ],
      //   onTap: (int tekantombol) {
      //     debugPrint("tombol $tekantombol ");
      //   },
      // ),
      /////////////////////////////////////////////////////////////////////////
      // sidebar samping kiri
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white70),
              accountName: Text(
                "iman arpah",
                style: TextStyle(color: Colors.green),
              ),
              accountEmail: Text(
                "imanarpah94@gmail.com",
                style: TextStyle(color: Colors.green),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                onTap: () {},
              ),
            ),
            ListTile(
              title: Text(
                "Profil",
                style: TextStyle(color: Colors.green),
              ),
              leading: Icon(Icons.person, color: Colors.green),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return profil();
                }));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Berkas",
                style: TextStyle(color: Colors.green),
              ),
              leading: Icon(Icons.file_upload, color: Colors.green),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return berkas();
                }));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Cetak Surat",
                style: TextStyle(color: Colors.green),
              ),
              leading: Icon(Icons.file_download, color: Colors.green),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return cetaksurat();
                }));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Riwayat",
                style: TextStyle(color: Colors.green),
              ),
              leading: Icon(Icons.notifications, color: Colors.green),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return riwayat();
                }));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Bantuan",
                style: TextStyle(color: Colors.green),
              ),
              leading: Icon(Icons.help, color: Colors.green),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return bantuan();
                }));
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(color: Colors.green),
              ),
              leading: Icon(Icons.remove, color: Colors.green),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(),
          ],
        ),
      ),
      /////////////////////////////////////////////////////////////////////////
      body: ListView(
        children: <Widget>[
          DesaCarousel(), // pemanggil variabel
          GreyArea(), // pembatas card
          MainMenuList(menuItems: menuItems),
          GreyArea(),
          DesaMenuList(title: "Info Comming Soon", desaImages: infocomingsoon),
          GreyArea(),
          DesaMenuList(title: "Info Desa", desaImages: infodesa),
        ],
      ),
    );
  }
}

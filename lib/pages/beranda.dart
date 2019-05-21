import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/slider/image_slider.dart';

class Beranda extends StatefulWidget{
  Beranda({Key key,this.title}):super(key:key);
  final String title;
  @override
  _BerandaPage createState()=>_BerandaPage();
}

class _BerandaPage extends State<Beranda>{
  DateTime time=DateTime.now();

  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        time = time.add(Duration(seconds: -1));
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var images = [
      {
        "image": "assets/images/slider_1.png",
      },
      {
        "image": "assets/images/slider_2.png",
      },
      {
        "image": "assets/images/slider_3.png",
      },
      {
        "image": "assets/images/slider_4.png",
      },
      {
        "image ": "assets/images/slider_5.png",
      },
    ];

    var imageSlider = ImageSlider(
      images: images,
    );
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
       // title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){
              //isi aksi
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            imageSlider,
            Divider(),
            MenuUtama()
          ],
        ),
      ),
    );
  }
}
class MenuUtama extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 5,
      shrinkWrap: true,
      children: menuUtamaItem,
    );
  }
}

  List<MenuUtamaItem> menuUtamaItem=[
    MenuUtamaItem(
      title: "Baju Kemeja",
      icon: Icons.school,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Baju Kaos",
      icon: Icons.school,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Celana Jeans",
      icon: Icons.school,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Bed Cover",
      icon: Icons.school,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Sprei",
      icon: Icons.school,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Selimut",
      icon: Icons.school,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Daleman",
      icon: Icons.person,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Kilat",
      icon: Icons.flash_auto,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Terdekat",
      icon: Icons.near_me,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
    MenuUtamaItem(
      title: "Lainnya",
      icon: Icons.linear_scale,
      colorBox: Colors.blue,
      colorIcon: Colors.white,
    ),
  ];

class MenuUtamaItem extends StatelessWidget{
  MenuUtamaItem({this.title,this.icon,this.colorBox,this.colorIcon});
  final String title;
  final IconData icon;
  final Color colorBox,colorIcon;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            color: colorBox,
            shape: BoxShape.circle
          ),
          child: Icon(
            icon,color: colorIcon,
          ),
        ),Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize:  12.0,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
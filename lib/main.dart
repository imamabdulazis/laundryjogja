import 'package:flutter/material.dart';
import 'package:flutter_app/pages/akun.dart';
import 'package:flutter_app/pages/beranda.dart';
import 'package:flutter_app/pages/keranjang.dart';
import 'package:flutter_app/pages/outlet.dart';
import 'package:flutter_app/pages/pesan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  _HomePage createState()=>new _HomePage();
}

class _HomePage extends State<MyHome>{
 int _selectIndex=0;

 final _pagelayout=[
   Beranda(),
   Outlet(),
   Pesan(),
   Keranjang(),
   Akun()
 ];

 void _onTabItem(int index){
   setState(() {
     _selectIndex=index;
   });
 }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _pagelayout.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Beranda")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cast_connected),
              title: Text("Outlet")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text("Pesan")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Keranjang")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Akun")
            ),
          ],type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        onTap: _onTabItem,
      ),
    );
  }

}
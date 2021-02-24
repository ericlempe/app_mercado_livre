import 'package:flutter/material.dart';
import 'package:app_mercadolivre/widgets/searchBar.dart';
import 'package:app_mercadolivre/widgets/menuDrawer.dart';
import 'package:app_mercadolivre/pages/home.dart';
import 'package:app_mercadolivre/pages/carrinho.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Mercado Livre',
      home: HomeMyApp(),
    );
  }
}

class HomeMyApp extends StatefulWidget {
  _HomeMyAppState createState() => _HomeMyAppState();
}

class _HomeMyAppState extends State<HomeMyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: MenuDrawer()),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Mercado Livre',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Carrinho()));
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: SearchBar());
              }),
        ],
      ),
      body: Home(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:app_mercadolivre/pages/minhasCompras.dart';
import 'package:app_mercadolivre/pages/favoritos.dart';
import 'package:app_mercadolivre/pages/minhaconta.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 120.0,
          child: DrawerHeader(
            decoration: BoxDecoration(color: Color.fromRGBO(255, 241, 89, 1)),
            child: Row(
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  child: CircleAvatar(
                    child: Icon(Icons.people),
                    backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                    foregroundColor: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(color: Colors.grey, width: 4.0)),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Olá, Eric!',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                      Text('Nivel Avançado')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        _itemMenuDrawer(context, MinhasCompras(),
            icon: Icon(Icons.shopping_bag), text: 'Minhas Compras', badge: '3'),
        Divider(color: Colors.grey),
        _itemMenuDrawer(context, Favoritos(),
            icon: Icon(Icons.favorite), text: 'Favoritos', badge: '10'),
        _itemMenuDrawer(context, MinhaConta(), icon: Icon(Icons.face), text: 'Minha Conta'),
      ],
    );
  }

  Widget _itemMenuDrawer(context, page, {Icon icon, String text, String badge = ''}) {
    return ListTile(
      leading: IconTheme(
        child: icon,
        data: IconThemeData(color: Colors.black),
      ),
      title: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
      trailing: Container(
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(100.0)),
        child: badge != ''
            ? Padding(
                padding: EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
                child: Text(badge, style: TextStyle(color: Colors.white)),
              )
            : Text(''),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => page
        ));
      },
    );
  }
}

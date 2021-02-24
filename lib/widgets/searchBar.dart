import 'package:flutter/material.dart';

class SearchBar extends SearchDelegate<String> {
  final products = [
    'Macbook',
    'Tenis',
    'Celular',
    'Teclado',
    'Relogio',
    'Perfume'
  ];

  final recentSearchs = ['Macbook', 'Tenis', 'Celular'];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.cancel),
        onPressed: () {
          query = "";
          close(context, null);
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          query = "";
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Resultado para a pesquisa: $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final results = query.isEmpty ? recentSearchs : products;

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.youtube_searched_for),
          title: Text(results[index]),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pokemon/shared/models/pokemon-list.dart';

class PokemonListView extends StatefulWidget {
  PokemonListView({Key key}) : super(key: key);

  _PokemonListViewState createState() => _PokemonListViewState();
}

class _PokemonListViewState extends State<PokemonListView> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // ouvinte
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getData();
      }
    });
  }

  ListTile _listTile({String imageUrl, String title, String subTitle}) {
    return ListTile(
      leading: Image.network(
        imageUrl,
      ),
      title: Text(title),
      subtitle: Text(subTitle),
    );
  }

  void _getData() {
    // Vai no serviço para obter a lista de pokemons
    setState(() {
      print('loading more,...');
      //if we're at the end of the list, add more items
      _listViewData..addAll(List<String>.from(_listViewData));
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  List<String> _listViewData = [
    "Inducesmile.com",
    "Flutter Dev",
    "Android Dev",
    "iOS Dev!",
    "React Native Dev!",
    "React Dev!",
    "express Dev!",
    "Laravel Dev!",
    "Angular Dev!",
    "Adonis Dev!",
    "Next.js Dev!",
    "Node.js Dev!",
    "Vue.js Dev!",
    "Java Dev!",
    "C# Dev!",
    "C++ Dev!",
    "C++ Dev!",
    "C++ Dev!",
    "C++ Dev!",
    "C++ Dev!",
    "C++ Dev!",
    "C++ Dev!",
    "C++ Dev!",
    "C++ Dev!",
    "C++ Dev!",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _listViewData.length, // Total da Lista (length)
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index) {
        var item = _listViewData[index];
        return Container(
          decoration: BoxDecoration(
            boxShadow: [new BoxShadow(color: Colors.white)],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "CP 400",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image.network(
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/20.png",
              ),
              Text(
                "Meu nome",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );

        // return _listTile(
        //     title: item,
        //     subTitle: item,
        //     imageUrl:
        //         "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/20.png");
        // return ListTile(
        //   title: Text(_listViewData[index]),
        // );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
    );
  }
}

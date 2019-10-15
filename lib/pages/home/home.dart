import 'package:flutter/material.dart';
import 'package:pokemon/shared/widgets/pokemon-list-view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "POKÉMON API",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Text(
                  "POKÉMON",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                text: "241/500",
              ),
              Tab(
                icon: Text(
                  "EGGS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                text: "8/9",
              ),
            ],
            indicatorColor: Colors.black87,
            labelColor: Colors.black87,
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: PokemonListView(),
            ),
            Icon(Icons.directions_transit),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.filter_list),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          onPressed: () {},
        ),
      ),
    );
  }
}

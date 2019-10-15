import 'package:equatable/equatable.dart';

class PokemonListModel extends Equatable {
  final String name;
  final String url;

  PokemonListModel({this.name, this.url});

  @override
  List<Object> get props => [name, url];
}

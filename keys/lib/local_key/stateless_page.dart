import 'package:flutter/material.dart';
import 'package:keys/random_color.dart';

class StatelessPage extends StatefulWidget {
  StatelessPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StatelessPageState();
}

class _StatelessPageState extends State<StatelessPage> {
  var _tiles = [
    _StatelessItem(),
    _StatelessItem(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _tiles,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.swap_horiz),
        onPressed: _swapTiles,
      ),
    );
  }

  void _swapTiles() {
    setState(() {
      _tiles.insert(1, _tiles.removeAt(0));
    });
  }
}

class _StatelessItem extends StatelessWidget {
  _StatelessItem({Key? key}) : super(key: key);

  final myColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColor,
      child: Padding(padding: EdgeInsets.all(70.0)),
    );
  }
}

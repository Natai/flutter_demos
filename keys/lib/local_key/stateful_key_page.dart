import 'package:flutter/material.dart';
import 'package:keys/random_color.dart';

class StatefulKeyPage extends StatefulWidget {
  StatefulKeyPage({
    Key? key,
    required this.useKey,
  }) : super(key: key);

  final bool useKey;

  @override
  State<StatefulWidget> createState() => _StatefulKeyPageState();
}

class _StatefulKeyPageState extends State<StatefulKeyPage> {
  late List<_StatefulKeyItem> _tiles;

  @override
  void initState() {
    super.initState();
    _tiles = [
      _StatefulKeyItem(key: widget.useKey ? UniqueKey() : null),
      _StatefulKeyItem(key: widget.useKey ? UniqueKey() : null),
    ];
  }

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

class _StatefulKeyItem extends StatefulWidget {
  _StatefulKeyItem({Key? key}) : super(key: key);

  @override
  _StatefulKeyItemState createState() => _StatefulKeyItemState();
}

class _StatefulKeyItemState extends State<_StatefulKeyItem> {
  final myColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: myColor,
      child: Padding(padding: EdgeInsets.all(70.0)),
    );
  }
}

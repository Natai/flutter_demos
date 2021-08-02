import 'package:flutter/material.dart';

class InsertPage extends StatefulWidget {
  const InsertPage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _InsertPageState createState() => _InsertPageState();
}

class _InsertPageState extends State<InsertPage> {
  var showBackground = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                showBackground = !showBackground;
              });
            },
            child: Text('Toggle Background Color'),
          ),
          showBackground
              ? Container(
                  color: Colors.red,
                  child: widget.child,
                )
              : widget.child,
        ],
      ),
    );
  }
}
